'use client';

import { Key, useState } from 'react';
import Image from 'next/image';
import { Checkbox } from '@/components/ui/checkbox';
import {
    Accordion,
    AccordionContent,
    AccordionItem,
    AccordionTrigger,
} from "@/components/ui/accordion"

function SortBy({ Objects, craftRoom, pantry, tank, boiler, board, vault, joja, spring, summer, fall, winter, dict }: { Objects: any, craftRoom: any, pantry: any, tank: any, boiler: any, board: any, vault: any, joja: any, spring: any, summer: any, fall: any, winter: any, dict: Record<string, boolean> }) {
    const [selected, setSelected] = useState('bundle');
    return (
        <div>
            <div className="justify-end flex">
                <label htmlFor="sort">Sort by: </label>
                <select name="sort" id="sortBy" defaultValue="bundle" onChange={e => setSelected(e.target.value)}>
                    <option value='bundle'>Bundle</option>
                    <option value='season'>Season</option>
                </select>
            </div>

            {selected == 'bundle' && <Accordion type='multiple' className="w-full">
                <RoomItem room={craftRoom} Objects={Objects} dict={dict} />
                <RoomItem room={pantry} Objects={Objects} dict={dict} />
                <RoomItem room={tank} Objects={Objects} dict={dict} />
                <RoomItem room={boiler} Objects={Objects} dict={dict} />
                <RoomItem room={board} Objects={Objects} dict={dict} />
                <RoomItem room={vault} Objects={Objects} dict={dict} />
                <RoomItem room={joja} Objects={Objects} dict={dict} />
            </Accordion>}

            {selected == 'season' && <Accordion type='multiple' className="w-full">
                <AccordionItem value="spring">
                    <AccordionTrigger className="text-xl font-bold">Spring</AccordionTrigger>
                    <AccordionContent>
                        <RoomItem room={craftRoom} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={pantry} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={tank} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={boiler} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={board} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={vault} Objects={Objects} season={'Spring'} dict={dict} />
                        <RoomItem room={joja} Objects={Objects} season={'Spring'} dict={dict} />
                    </AccordionContent>
                </AccordionItem>
                <AccordionItem value="summer">
                    <AccordionTrigger className="text-xl font-bold">Summer</AccordionTrigger>
                    <AccordionContent>
                        <RoomItem room={craftRoom} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={pantry} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={tank} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={boiler} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={board} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={vault} Objects={Objects} season={'Summer'} dict={dict} />
                        <RoomItem room={joja} Objects={Objects} season={'Summer'} dict={dict} />
                    </AccordionContent>
                    </AccordionItem>
                    <AccordionItem value="fall">
                    <AccordionTrigger className="text-xl font-bold">Fall</AccordionTrigger>
                    <AccordionContent>
                        <RoomItem room={craftRoom} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={pantry} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={tank} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={boiler} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={board} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={vault} Objects={Objects} season={'Fall'} dict={dict} />
                        <RoomItem room={joja} Objects={Objects} season={'Fall'} dict={dict} />
                    </AccordionContent>
                    </AccordionItem>
                    <AccordionItem value="winter">
                    <AccordionTrigger className="text-xl font-bold">Winter</AccordionTrigger>
                    <AccordionContent>
                        <RoomItem room={craftRoom} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={pantry} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={tank} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={boiler} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={board} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={vault} Objects={Objects} season={'Winter'} dict={dict} />
                        <RoomItem room={joja} Objects={Objects} season={'Winter'} dict={dict} />
                    </AccordionContent>
                </AccordionItem>
            </Accordion>}

        </div>
    )
}

export { SortBy };

function RoomItem({ room, Objects, season, dict }: { room: any, Objects: any, season?: string, dict: Record<string, boolean> }) {
    return (
        <AccordionItem value={room}>
            <AccordionTrigger className={`${season ? "text-lg px-5" : "text-xl font-bold"}`}>{room[0].room}</AccordionTrigger>
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
                                    {Objects.filter((item: any) => item.bundle === b.bundle && (!season || item.season.includes(season))).map((item: { name: Key | null | undefined; }) => (
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