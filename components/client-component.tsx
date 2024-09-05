'use client';

import React, { Key, useState } from 'react';
import Select from 'react-select'
import Image from 'next/image';
import { Checkbox } from '@/components/ui/checkbox';
import {
    Accordion,
    AccordionContent,
    AccordionItem,
    AccordionTrigger,
} from "@/components/ui/accordion"

const seasonOptions = [
    {value: 'Spring', label: 'Spring'},
    {value: 'Summer', label: 'Summer'},
    {value: 'Fall', label: 'Fall'},
    {value: 'Winter', label:'Winter'}
]

const typeOptions = [
    {value: 'Farming', label: 'Farming'},
    {value: 'Foraging', label: 'Foraging'},
    {value: 'Mining', label: 'Mining'},
    {value: 'Fishing', label: 'Fishing'},
    {value: 'Combat', label: 'Combat'},
    {value: 'Other', label: 'Other'},
]

function SortBy({ Objects, craftRoom, pantry, tank, boiler, board, vault, joja, dict }: { Objects: any, craftRoom: any, pantry: any, tank: any, boiler: any, board: any, vault: any, joja: any, dict: Record<string, boolean> }) {
    const [selectedSeason, setSelectedSeason] = useState([]);
    const [selectedType, setSelectedType] = useState([]);


    const handleSeasonChange = (selectedOptions: any) => {
        const selectedValues = selectedOptions ? selectedOptions.map((option: any) => option.value) : [];
        setSelectedSeason(selectedValues);
    }

    const handleTypeChange = (selectedOptions: any) => {
        const selectedValues = selectedOptions ? selectedOptions.map((option: any) => option.value) : [];
        setSelectedType(selectedValues);
    }

    return (
        <div>
            <div className="justify-end flex items-center space-x-[10px]">
                <Select 
                placeholder='Season'
                closeMenuOnSelect={false}
                isMulti
                className='basic-multi-select my-react-select-container'
                classNamePrefix="my-react-select"
                options={seasonOptions}
                onChange = {handleSeasonChange}/>

                

                <Select 
                placeholder='Type'
                closeMenuOnSelect={false}
                isMulti
                className='basic-multi-select my-react-select-container'
                classNamePrefix="my-react-select"
                options={typeOptions}
                onChange = {handleTypeChange}/>
            </div>

            <Accordion type='multiple' className="w-full">
                <RoomItem room={craftRoom} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={pantry} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={tank} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={boiler} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={board} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={vault} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
                <RoomItem room={joja} Objects={Objects} season={selectedSeason} type = {selectedType} dict={dict} />
            </Accordion>


        </div>
    )
}

export { SortBy };

function RoomItem({ room, Objects, season, type, dict }: { room: any, Objects: any, season?: Array<string>, type?: Array<string>, dict: Record<string, boolean> }) {
    return (
        <AccordionItem value={room}>
            <AccordionTrigger className={"text-xl font-bold"}>{room[0].room}</AccordionTrigger>
            <AccordionContent>
                {room.map((b: any) => (
                    <Accordion type="multiple" className="px-10">
                        <AccordionItem value={b.bundle}>
                            <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
                            <AccordionContent>
                                <ul>
                                    <div className="grid items-center grid-cols-4">
                                        <p className="grid-item"></p>
                                        <p className="font-bold grid-item text-center">Location</p>
                                        <p className="font-bold grid-item text-center">Type</p>
                                        <p className="font-bold grid-item text-center">Season</p>
                                    </div>
                                </ul>
                                <ul>
                                    {Objects.filter((item: any) => item.bundle === b.bundle && (!season || season.length == 0 || season.includes(item.season) || item.season.split(',').some((r: string)=>season.includes(r))) && (!type || type.length == 0 || type.includes(item.type) || item.type.split(',').some((r: string)=>type.includes(r)))).map((item: { name: Key | null | undefined; }) => (
                                        <BundleItem key={item.name} item={item} dict={dict} />
                                    ))}
                                </ul>
                            </AccordionContent>
                        </AccordionItem>
                    </Accordion>
                ))}

            </AccordionContent>
        </AccordionItem>
    );
}

export { RoomItem };

function BundleItem({ item, dict }: { item: any, dict: Record<string, boolean> }) {
    const [isChecked, setIsChecked] = useState(dict[`${item.bundle}-${item.name}`]);

    const handleCheckboxChange = () => {
        setIsChecked(!isChecked);
        dict[`${item.bundle}-${item.name}`] = !isChecked;
    };

    return (
        <li className={`grid grid-cols-4 items-center ${isChecked ? "opacity-50" : ""} transition-opacity`}>
            <div className="grid-item items-center flex">
                <Checkbox key={`${item.bundle}-${item.name}`} id="checkbox" checked={isChecked} onClick={handleCheckboxChange} />
                <Image src={item.img} width={48} height={48} alt={`Image of ${item.name}`} />
                <label htmlFor="checkbox" className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
                    <a className="text-blue-400 hover:text-black hover:bg-blue-300" href={`https://stardewvalleywiki.com/${item.name}`} target="_blank">
                        {item.name}
                        {(item.name === 'Wood' && ' (198)') || (item.name === 'Stone' && ' (99)') || (item.name === 'Hardwood' && ' (10)') || (item.bundle == 'Quality Crops' && ' (5)') || (item.name == 'Slime' && ' (99)') || (item.name == 'Bat Wing' && ' (10)') || (item.bundle == 'Fodder' && item.name == 'Wheat' && ' (10)') || (item.bundle == 'Fodder' && item.name == 'Hay' && ' (10)') || (item.bundle == 'Fodder' && item.name == 'Apple' && ' (3)') || (item.name == 'Ancient Fruit' && ' (5)')}
                    </a>
                </label>
            </div>
            <p className="grid-item text-center">{item.location}</p>
            <p className="grid-item text-center">{item.type}</p>
            <p className="grid-item text-center">{item.season}</p>
        </li>
    );
}

export default BundleItem;