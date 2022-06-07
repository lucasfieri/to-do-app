import { PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()

export default async function handler(req, res) {
  const allItens = await prisma.item.findMany()
  res.status(200).json(allItens)
}
