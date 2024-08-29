import {PrismaClient} from '../node_modules/@prisma/client';

const prisma = new PrismaClient();


async function getBundles(bundleRoom: string) {
  try {
    const bundles = await prisma.bundles.findMany(
      {
        where: {
          room : bundleRoom,
        },

      }
    );
    return bundles;
  } finally {
    await prisma.$disconnect();
  }
}

export {getBundles};

async function getSeasons(seasonName: string) {
  try {
    const seasons = await prisma.objects.findMany(
      {
        where: {
          season: {contains: seasonName,},
        },
      },
    );
    return seasons;
  } finally {
    await prisma.$disconnect();
  }
}

export { getSeasons };

async function getObjects() {
  try {
    const objects = await prisma.objects.findMany();
    return objects;
  } finally {
    await prisma.$disconnect();
  }
}

export { getObjects };

