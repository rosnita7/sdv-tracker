'use client';

import { useState } from 'react';
import Image from 'next/image';
import { Checkbox } from '@/components/ui/checkbox';

function BundleItem({ item, dict }: {item: any, dict: Record<string,boolean>}) {
    const [isChecked, setIsChecked] = useState(dict[`${item.bundle}-${item.name}`]);
  
    const handleCheckboxChange = () => {
      setIsChecked(!isChecked);
      dict[`${item.bundle}-${item.name}`] = !isChecked;
    };

    return (
        <li className={`grid grid-cols-4 items-center ${isChecked ? "opacity-50" : ""} transition-opacity`}>
          <div className="grid-item items-center flex">
            <Checkbox key = {`${item.bundle}-${item.name}`}id="checkbox" checked={isChecked} onClick={handleCheckboxChange} />
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