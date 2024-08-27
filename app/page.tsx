import Image from "next/image";
import { Checkbox } from "@/components/ui/checkbox"
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from "@/components/ui/accordion"
import { Button } from "@/components/ui/button"
import { getObjects, getBundles } from "../lib/data"
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu"

import BundleItem from '@/components/client-component'



export default async function Home() {
  const Objects = await getObjects();
  const craftRoom = await getBundles('Crafts Room');
  const pantry = await getBundles('Pantry');
  const tank = await getBundles('Fish Tank');
  const boiler = await getBundles('Boiler Room');
  const board = await getBundles('Bulletin Board');
  const vault = await getBundles('Vault');
  const joja = await getBundles('Abandoned JojaMart');
  var dict: Record <string,boolean> = {};

  for (let i=0; i<Objects.length; i++) {
    dict[`${Objects[i].bundle}-${Objects[i].name}`] = false;
  }

  return (
    <main className="flex min-h-screen flex-col items-center justify-between p-24">
      <Accordion type= "multiple" className = "w-full">
        <AccordionItem value="crafts">
          <AccordionTrigger className = "text-xl font-bold">Crafts Room</AccordionTrigger>
          <AccordionContent>
          {craftRoom.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}

          </AccordionContent>
          </AccordionItem>

          <AccordionItem value="pantry">
          <AccordionTrigger className = "text-xl font-bold">Fish Tank</AccordionTrigger>
          <AccordionContent>
          {tank.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item, index) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}
          </AccordionContent>
          </AccordionItem>


          <AccordionItem value="fishtank">
          <AccordionTrigger className = "text-xl font-bold">Pantry</AccordionTrigger>
          <AccordionContent>
          {pantry.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}
          </AccordionContent>
          </AccordionItem>

          <AccordionItem value="boiler">
          <AccordionTrigger className = "text-xl font-bold">Boiler Room</AccordionTrigger>
          <AccordionContent>
          {boiler.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}
          </AccordionContent>
          </AccordionItem>

          <AccordionItem value="board">
          <AccordionTrigger className = "text-xl font-bold">Bulletin Board</AccordionTrigger>
          <AccordionContent>
          {board.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}

          </AccordionContent>
          </AccordionItem>


          <AccordionItem value="vault">
          <AccordionTrigger className = "text-xl font-bold">Vault</AccordionTrigger>
          <AccordionContent>
          {vault.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}

          </AccordionContent>
          </AccordionItem>

          <AccordionItem value="joja">
          <AccordionTrigger className = "text-xl font-bold">Abandoned JojaMart</AccordionTrigger>
          <AccordionContent>
          {joja.map((b) => (
              <Accordion type = "multiple" className="px-10">
              <AccordionItem value = {b.bundle}>
              <AccordionTrigger className="text-base">{b.bundle}</AccordionTrigger>
              <AccordionContent>
              <ul>
            <div className = "grid items-center grid-cols-4">
              <p className="grid-item"></p>
              <p className="font-bold grid-item text-center">Location</p>
              <p className="font-bold grid-item text-center">Type</p>
              <p className="font-bold grid-item text-center">Season</p>
            </div>
          </ul>
          <ul>
            {Objects.filter((item) => item.bundle === b.bundle).map((item) => (
              <BundleItem key={item.name} item={item} dict={dict} />
            ))}
          </ul>
                </AccordionContent>
                </AccordionItem>
                </Accordion>
            ))}

          </AccordionContent>
          </AccordionItem>

          </Accordion>
    </main>

  );

}
