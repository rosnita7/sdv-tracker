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
import {SortBy, RoomItem} from '@/components/client-component'



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
    <main className="flex min-h-screen flex-col p-24">
      <SortBy Objects={Objects} craftRoom = {craftRoom} pantry = {pantry} tank = {tank} boiler = {boiler} board = {board} vault = {vault} joja = {joja} dict = {dict} />
    </main>

  );

}
