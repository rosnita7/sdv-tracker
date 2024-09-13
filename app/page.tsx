
import { getObjects, getBundles } from "../lib/data"

import {SortBy} from '@/components/client-component'



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
    <main className="flex min-h-screen flex-col md:px-24 md:py-10 p-5">
      <SortBy Objects={Objects} craftRoom = {craftRoom} pantry = {pantry} tank = {tank} boiler = {boiler} board = {board} vault = {vault} joja = {joja} dict = {dict} />
    </main>

  );

}
