//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package net.minecraft.world.level.levelgen.structure.structures;

import com.google.common.collect.Lists;
import java.util.List;
import javax.annotation.Nullable;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.util.RandomSource;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.level.ChunkPos;
import net.minecraft.world.level.StructureManager;
import net.minecraft.world.level.WorldGenLevel;
import net.minecraft.world.level.block.Blocks;
import net.minecraft.world.level.block.ButtonBlock;
import net.minecraft.world.level.block.DoorBlock;
import net.minecraft.world.level.block.EndPortalFrameBlock;
import net.minecraft.world.level.block.FenceBlock;
import net.minecraft.world.level.block.IronBarsBlock;
import net.minecraft.world.level.block.LadderBlock;
import net.minecraft.world.level.block.SlabBlock;
import net.minecraft.world.level.block.StairBlock;
import net.minecraft.world.level.block.WallTorchBlock;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.SpawnerBlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.block.state.properties.DoubleBlockHalf;
import net.minecraft.world.level.block.state.properties.SlabType;
import net.minecraft.world.level.chunk.ChunkGenerator;
import net.minecraft.world.level.levelgen.structure.BoundingBox;
import net.minecraft.world.level.levelgen.structure.StructurePiece;
import net.minecraft.world.level.levelgen.structure.StructurePieceAccessor;
import net.minecraft.world.level.levelgen.structure.pieces.StructurePieceSerializationContext;
import net.minecraft.world.level.levelgen.structure.pieces.StructurePieceType;
import net.minecraft.world.level.storage.loot.BuiltInLootTables;

public class StrongholdPieces {
    private static final int SMALL_DOOR_WIDTH = 3;
    private static final int SMALL_DOOR_HEIGHT = 3;
    private static final int MAX_DEPTH = 50;
    private static final int LOWEST_Y_POSITION = 10;
    private static final boolean CHECK_AIR = true;
    public static final int MAGIC_START_Y = 64;
    private static final PieceWeight[] STRONGHOLD_PIECE_WEIGHTS = new PieceWeight[]{new PieceWeight(Straight.class, 40, 0), new PieceWeight(PrisonHall.class, 5, 5), new PieceWeight(LeftTurn.class, 20, 0), new PieceWeight(RightTurn.class, 20, 0), new PieceWeight(RoomCrossing.class, 10, 6), new PieceWeight(StraightStairsDown.class, 5, 5), new PieceWeight(StairsDown.class, 5, 5), new PieceWeight(FiveCrossing.class, 5, 4), new PieceWeight(ChestCorridor.class, 5, 4), new PieceWeight(Library.class, 10, 2) {
        public boolean doPlace(int genDepth) {
            return super.doPlace(genDepth) && genDepth > 4;
        }
    }, new PieceWeight(PortalRoom.class, 20, 1) {
        public boolean doPlace(int genDepth) {
            return super.doPlace(genDepth) && genDepth > 5;
        }
    }};
    private static List<PieceWeight> currentPieces;
    static Class<? extends StrongholdPiece> imposedPiece;
    private static int totalWeight;
    static final SmoothStoneSelector SMOOTH_STONE_SELECTOR = new SmoothStoneSelector();

    public static void resetPieces() {
        currentPieces = Lists.newArrayList();

        for(PieceWeight pieceWeight : STRONGHOLD_PIECE_WEIGHTS) {
            pieceWeight.placeCount = 0;
            currentPieces.add(pieceWeight);
        }

        imposedPiece = null;
    }

    private static boolean updatePieceWeight() {
        boolean bl = false;
        totalWeight = 0;

        for(PieceWeight pieceWeight : currentPieces) {
            if (pieceWeight.maxPlaceCount > 0 && pieceWeight.placeCount < pieceWeight.maxPlaceCount) {
                bl = true;
            }

            totalWeight += pieceWeight.weight;
        }

        return bl;
    }

    private static StrongholdPiece findAndCreatePieceFactory(Class<? extends StrongholdPiece> pieceClass, StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, @Nullable Direction direction, int genDepth) {
        StrongholdPiece strongholdPiece = null;
        if (pieceClass == Straight.class) {
            strongholdPiece = StrongholdPieces.Straight.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == PrisonHall.class) {
            strongholdPiece = StrongholdPieces.PrisonHall.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == LeftTurn.class) {
            strongholdPiece = StrongholdPieces.LeftTurn.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == RightTurn.class) {
            strongholdPiece = StrongholdPieces.RightTurn.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == RoomCrossing.class) {
            strongholdPiece = StrongholdPieces.RoomCrossing.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == StraightStairsDown.class) {
            strongholdPiece = StrongholdPieces.StraightStairsDown.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == StairsDown.class) {
            strongholdPiece = StrongholdPieces.StairsDown.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == FiveCrossing.class) {
            strongholdPiece = StrongholdPieces.FiveCrossing.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == ChestCorridor.class) {
            strongholdPiece = StrongholdPieces.ChestCorridor.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == Library.class) {
            strongholdPiece = StrongholdPieces.Library.createPiece(pieces, random, x, y, z, direction, genDepth);
        } else if (pieceClass == PortalRoom.class) {
            strongholdPiece = StrongholdPieces.PortalRoom.createPiece(pieces, x, y, z, direction, genDepth);
        }

        return strongholdPiece;
    }

    private static StrongholdPiece generatePieceFromSmallDoor(StartPiece piece, StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction direction, int genDepth) {
        if (!updatePieceWeight()) {
            return null;
        } else {
            if (imposedPiece != null) {
                StrongholdPiece strongholdPiece = findAndCreatePieceFactory(imposedPiece, pieces, random, x, y, z, direction, genDepth);
                imposedPiece = null;
                if (strongholdPiece != null) {
                    return strongholdPiece;
                }
            }

            int i = 0;

            while(i < 5) {
                ++i;
                int j = random.nextInt(totalWeight);

                for(PieceWeight pieceWeight : currentPieces) {
                    j -= pieceWeight.weight;
                    if (j < 0) {
                        if (!pieceWeight.doPlace(genDepth) || pieceWeight == piece.previousPiece) {
                            break;
                        }

                        StrongholdPiece strongholdPiece2 = findAndCreatePieceFactory(pieceWeight.pieceClass, pieces, random, x, y, z, direction, genDepth);
                        if (strongholdPiece2 != null) {
                            ++pieceWeight.placeCount;
                            piece.previousPiece = pieceWeight;
                            if (!pieceWeight.isValid()) {
                                currentPieces.remove(pieceWeight);
                            }

                            return strongholdPiece2;
                        }
                    }
                }
            }

            BoundingBox boundingBox = StrongholdPieces.FillerCorridor.findPieceBox(pieces, random, x, y, z, direction);
            if (boundingBox != null && boundingBox.minY() > 1) {
                return new FillerCorridor(genDepth, boundingBox, direction);
            } else {
                return null;
            }
        }
    }

    static StructurePiece generateAndAddPiece(StartPiece piece, StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, @Nullable Direction direction, int genDepth) {
        if (genDepth > 50) {
            return null;
        } else if (Math.abs(x - piece.getBoundingBox().minX()) <= 112 && Math.abs(z - piece.getBoundingBox().minZ()) <= 112) {
            StructurePiece structurePiece = generatePieceFromSmallDoor(piece, pieces, random, x, y, z, direction, genDepth + 1);
            if (structurePiece != null) {
                pieces.addPiece(structurePiece);
                piece.pendingChildren.add(structurePiece);
            }

            return structurePiece;
        } else {
            return null;
        }
    }

    static class PieceWeight {
        public final Class<? extends StrongholdPiece> pieceClass;
        public final int weight;
        public int placeCount;
        public final int maxPlaceCount;

        public PieceWeight(Class<? extends StrongholdPiece> pieceClass, int weight, int maxPlaceCount) {
            this.pieceClass = pieceClass;
            this.weight = weight;
            this.maxPlaceCount = maxPlaceCount;
        }

        public boolean doPlace(int genDepth) {
            return this.maxPlaceCount == 0 || this.placeCount < this.maxPlaceCount;
        }

        public boolean isValid() {
            return this.maxPlaceCount == 0 || this.placeCount < this.maxPlaceCount;
        }
    }

    abstract static class StrongholdPiece extends StructurePiece {
        protected SmallDoorType entryDoor;

        protected StrongholdPiece(StructurePieceType type, int genDepth, BoundingBox boundingBox) {
            super(type, genDepth, boundingBox);
            this.entryDoor = StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING;
        }

        public StrongholdPiece(StructurePieceType type, CompoundTag tag) {
            super(type, tag);
            this.entryDoor = StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING;
            this.entryDoor = StrongholdPieces.StrongholdPiece.SmallDoorType.valueOf(tag.getString("EntryDoor"));
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            tag.putString("EntryDoor", this.entryDoor.name());
        }

        protected void generateSmallDoor(WorldGenLevel level, RandomSource random, BoundingBox box, SmallDoorType type, int x, int y, int z) {
            switch (type) {
                case OPENING:
                    this.generateBox(level, box, x, y, z, x + 3 - 1, y + 3 - 1, z, CAVE_AIR, CAVE_AIR, false);
                    break;
                case WOOD_DOOR:
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y + 1, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 1, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y + 1, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y, z, box);
                    this.placeBlock(level, Blocks.OAK_DOOR.defaultBlockState(), x + 1, y, z, box);
                    this.placeBlock(level, (BlockState)Blocks.OAK_DOOR.defaultBlockState().setValue(DoorBlock.HALF, DoubleBlockHalf.UPPER), x + 1, y + 1, z, box);
                    break;
                case GRATES:
                    this.placeBlock(level, Blocks.CAVE_AIR.defaultBlockState(), x + 1, y, z, box);
                    this.placeBlock(level, Blocks.CAVE_AIR.defaultBlockState(), x + 1, y + 1, z, box);
                    this.placeBlock(level, (BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true), x, y, z, box);
                    this.placeBlock(level, (BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true), x, y + 1, z, box);
                    this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.EAST, true)).setValue(IronBarsBlock.WEST, true), x, y + 2, z, box);
                    this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.EAST, true)).setValue(IronBarsBlock.WEST, true), x + 1, y + 2, z, box);
                    this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.EAST, true)).setValue(IronBarsBlock.WEST, true), x + 2, y + 2, z, box);
                    this.placeBlock(level, (BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.EAST, true), x + 2, y + 1, z, box);
                    this.placeBlock(level, (BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.EAST, true), x + 2, y, z, box);
                    break;
                case IRON_DOOR:
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y + 1, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 1, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y + 2, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y + 1, z, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), x + 2, y, z, box);
                    this.placeBlock(level, Blocks.IRON_DOOR.defaultBlockState(), x + 1, y, z, box);
                    this.placeBlock(level, (BlockState)Blocks.IRON_DOOR.defaultBlockState().setValue(DoorBlock.HALF, DoubleBlockHalf.UPPER), x + 1, y + 1, z, box);
                    this.placeBlock(level, (BlockState)Blocks.STONE_BUTTON.defaultBlockState().setValue(ButtonBlock.FACING, Direction.NORTH), x + 2, y + 1, z + 1, box);
                    this.placeBlock(level, (BlockState)Blocks.STONE_BUTTON.defaultBlockState().setValue(ButtonBlock.FACING, Direction.SOUTH), x + 2, y + 1, z - 1, box);
            }

        }

        protected SmallDoorType randomSmallDoor(RandomSource random) {
            int i = random.nextInt(5);
            switch (i) {
                case 0:
                case 1:
                default:
                    return StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING;
                case 2:
                    return StrongholdPieces.StrongholdPiece.SmallDoorType.WOOD_DOOR;
                case 3:
                    return StrongholdPieces.StrongholdPiece.SmallDoorType.GRATES;
                case 4:
                    return StrongholdPieces.StrongholdPiece.SmallDoorType.IRON_DOOR;
            }
        }

        @Nullable
        protected StructurePiece generateSmallDoorChildForward(StartPiece startPiece, StructurePieceAccessor pieces, RandomSource random, int offsetX, int offsetY) {
            Direction direction = this.getOrientation();
            if (direction != null) {
                switch (direction) {
                    case NORTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() - 1, direction, this.getGenDepth());
                    }
                    case SOUTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.maxZ() + 1, direction, this.getGenDepth());
                    }
                    case WEST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() - 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, direction, this.getGenDepth());
                    }
                    case EAST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.maxX() + 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, direction, this.getGenDepth());
                    }
                }
            }

            return null;
        }

        @Nullable
        protected StructurePiece generateSmallDoorChildLeft(StartPiece startPiece, StructurePieceAccessor pieces, RandomSource random, int offsetY, int offsetX) {
            Direction direction = this.getOrientation();
            if (direction != null) {
                switch (direction) {
                    case NORTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() - 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, Direction.WEST, this.getGenDepth());
                    }
                    case SOUTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() - 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, Direction.WEST, this.getGenDepth());
                    }
                    case WEST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() - 1, Direction.NORTH, this.getGenDepth());
                    }
                    case EAST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() - 1, Direction.NORTH, this.getGenDepth());
                    }
                }
            }

            return null;
        }

        @Nullable
        protected StructurePiece generateSmallDoorChildRight(StartPiece startPiece, StructurePieceAccessor pieces, RandomSource random, int offsetY, int offsetX) {
            Direction direction = this.getOrientation();
            if (direction != null) {
                switch (direction) {
                    case NORTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.maxX() + 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, Direction.EAST, this.getGenDepth());
                    }
                    case SOUTH -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.maxX() + 1, this.boundingBox.minY() + offsetY, this.boundingBox.minZ() + offsetX, Direction.EAST, this.getGenDepth());
                    }
                    case WEST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.maxZ() + 1, Direction.SOUTH, this.getGenDepth());
                    }
                    case EAST -> {
                        return StrongholdPieces.generateAndAddPiece(startPiece, pieces, random, this.boundingBox.minX() + offsetX, this.boundingBox.minY() + offsetY, this.boundingBox.maxZ() + 1, Direction.SOUTH, this.getGenDepth());
                    }
                }
            }

            return null;
        }

        protected static boolean isOkBox(BoundingBox box) {
            return box != null && box.minY() > 10;
        }

        protected static enum SmallDoorType {
            OPENING,
            WOOD_DOOR,
            GRATES,
            IRON_DOOR;
        }
    }

    public static class FillerCorridor extends StrongholdPiece {
        private final int steps;

        public FillerCorridor(int genDepth, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_FILLER_CORRIDOR, genDepth, box);
            this.setOrientation(orientation);
            this.steps = orientation != Direction.NORTH && orientation != Direction.SOUTH ? box.getXSpan() : box.getZSpan();
        }

        public FillerCorridor(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_FILLER_CORRIDOR, tag);
            this.steps = tag.getInt("Steps");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putInt("Steps", this.steps);
        }

        public static BoundingBox findPieceBox(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation) {
            int i = 3;
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, 4, orientation);
            StructurePiece structurePiece = pieces.findCollisionPiece(boundingBox);
            if (structurePiece == null) {
                return null;
            } else {
                if (structurePiece.getBoundingBox().minY() == boundingBox.minY()) {
                    for(int j = 2; j >= 1; --j) {
                        boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, j, orientation);
                        if (!structurePiece.getBoundingBox().intersects(boundingBox)) {
                            return BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, j + 1, orientation);
                        }
                    }
                }

                return null;
            }
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            for(int i = 0; i < this.steps; ++i) {
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 0, 0, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 0, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 0, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 0, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 4, 0, i, box);

                for(int j = 1; j <= 3; ++j) {
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 0, j, i, box);
                    this.placeBlock(level, Blocks.CAVE_AIR.defaultBlockState(), 1, j, i, box);
                    this.placeBlock(level, Blocks.CAVE_AIR.defaultBlockState(), 2, j, i, box);
                    this.placeBlock(level, Blocks.CAVE_AIR.defaultBlockState(), 3, j, i, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 4, j, i, box);
                }

                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 0, 4, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 4, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 4, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 4, i, box);
                this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 4, 4, i, box);
            }

        }
    }

    public static class StairsDown extends StrongholdPiece {
        private static final int WIDTH = 5;
        private static final int HEIGHT = 11;
        private static final int DEPTH = 5;
        private final boolean isSource;

        public StairsDown(StructurePieceType type, int genDepth, int x, int z, Direction orientation) {
            super(type, genDepth, makeBoundingBox(x, 64, z, orientation, 5, 11, 5));
            this.isSource = true;
            this.setOrientation(orientation);
            this.entryDoor = StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING;
        }

        public StairsDown(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_STAIRS_DOWN, genDepth, box);
            this.isSource = false;
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public StairsDown(StructurePieceType type, CompoundTag tag) {
            super(type, tag);
            this.isSource = tag.getBoolean("Source");
        }

        public StairsDown(CompoundTag tag) {
            this(StructurePieceType.STRONGHOLD_STAIRS_DOWN, tag);
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("Source", this.isSource);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            if (this.isSource) {
                StrongholdPieces.imposedPiece = FiveCrossing.class;
            }

            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 1, 1);
        }

        public static StairsDown createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -7, 0, 5, 11, 5, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new StairsDown(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 10, 4, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 7, 0);
            this.generateSmallDoor(level, random, box, StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING, 1, 1, 4);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 6, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 5, 1, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 1, 6, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 5, 2, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 4, 3, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 1, 5, 3, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 4, 3, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 3, 3, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 3, 4, 3, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 3, 2, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 2, 1, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 3, 3, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 2, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 1, 1, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 1, 2, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 1, 2, box);
            this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 1, 1, 3, box);
        }
    }

    public static class StartPiece extends StairsDown {
        public PieceWeight previousPiece;
        @Nullable
        public PortalRoom portalRoomPiece;
        public final List<StructurePiece> pendingChildren = Lists.newArrayList();

        public StartPiece(RandomSource random, int x, int z) {
            super(StructurePieceType.STRONGHOLD_START, 0, x, z, getRandomHorizontalDirection(random));
        }

        public StartPiece(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_START, tag);
        }

        public BlockPos getLocatorPosition() {
            return this.portalRoomPiece != null ? this.portalRoomPiece.getLocatorPosition() : super.getLocatorPosition();
        }
    }

    public static class Straight extends StrongholdPiece {
        private static final int WIDTH = 5;
        private static final int HEIGHT = 5;
        private static final int DEPTH = 7;
        private final boolean leftChild;
        private final boolean rightChild;

        public Straight(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_STRAIGHT, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
            this.leftChild = random.nextInt(2) == 0;
            this.rightChild = random.nextInt(2) == 0;
        }

        public Straight(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_STRAIGHT, tag);
            this.leftChild = tag.getBoolean("Left");
            this.rightChild = tag.getBoolean("Right");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("Left", this.leftChild);
            tag.putBoolean("Right", this.rightChild);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 1, 1);
            if (this.leftChild) {
                this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, 1, 2);
            }

            if (this.rightChild) {
                this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, 1, 2);
            }

        }

        public static Straight createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction direction, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, 7, direction);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new Straight(genDepth, random, boundingBox, direction) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 4, 6, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 1, 0);
            this.generateSmallDoor(level, random, box, StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING, 1, 1, 6);
            BlockState blockState = (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.EAST);
            BlockState blockState2 = (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.WEST);
            this.maybeGenerateBlock(level, box, random, 0.1F, 1, 2, 1, blockState);
            this.maybeGenerateBlock(level, box, random, 0.1F, 3, 2, 1, blockState2);
            this.maybeGenerateBlock(level, box, random, 0.1F, 1, 2, 5, blockState);
            this.maybeGenerateBlock(level, box, random, 0.1F, 3, 2, 5, blockState2);
            if (this.leftChild) {
                this.generateBox(level, box, 0, 1, 2, 0, 3, 4, CAVE_AIR, CAVE_AIR, false);
            }

            if (this.rightChild) {
                this.generateBox(level, box, 4, 1, 2, 4, 3, 4, CAVE_AIR, CAVE_AIR, false);
            }

        }
    }

    public static class ChestCorridor extends StrongholdPiece {
        private static final int WIDTH = 5;
        private static final int HEIGHT = 5;
        private static final int DEPTH = 7;
        private boolean hasPlacedChest;

        public ChestCorridor(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_CHEST_CORRIDOR, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public ChestCorridor(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_CHEST_CORRIDOR, tag);
            this.hasPlacedChest = tag.getBoolean("Chest");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("Chest", this.hasPlacedChest);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 1, 1);
        }

        public static ChestCorridor createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, 7, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new ChestCorridor(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 4, 6, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 1, 0);
            this.generateSmallDoor(level, random, box, StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING, 1, 1, 6);
            this.generateBox(level, box, 3, 1, 2, 3, 1, 4, Blocks.STONE_BRICKS.defaultBlockState(), Blocks.STONE_BRICKS.defaultBlockState(), false);
            this.placeBlock(level, Blocks.STONE_BRICK_SLAB.defaultBlockState(), 3, 1, 1, box);
            this.placeBlock(level, Blocks.STONE_BRICK_SLAB.defaultBlockState(), 3, 1, 5, box);
            this.placeBlock(level, Blocks.STONE_BRICK_SLAB.defaultBlockState(), 3, 2, 2, box);
            this.placeBlock(level, Blocks.STONE_BRICK_SLAB.defaultBlockState(), 3, 2, 4, box);

            for(int i = 2; i <= 4; ++i) {
                this.placeBlock(level, Blocks.STONE_BRICK_SLAB.defaultBlockState(), 2, 1, i, box);
            }

            if (!this.hasPlacedChest && box.isInside(this.getWorldPos(3, 2, 3))) {
                this.hasPlacedChest = true;
                this.createChest(level, box, random, 3, 2, 3, BuiltInLootTables.STRONGHOLD_CORRIDOR);
            }

        }
    }

    public static class StraightStairsDown extends StrongholdPiece {
        private static final int WIDTH = 5;
        private static final int HEIGHT = 11;
        private static final int DEPTH = 8;

        public StraightStairsDown(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_STRAIGHT_STAIRS_DOWN, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public StraightStairsDown(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_STRAIGHT_STAIRS_DOWN, tag);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 1, 1);
        }

        public static StraightStairsDown createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -7, 0, 5, 11, 8, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new StraightStairsDown(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 10, 7, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 7, 0);
            this.generateSmallDoor(level, random, box, StrongholdPieces.StrongholdPiece.SmallDoorType.OPENING, 1, 1, 7);
            BlockState blockState = (BlockState)Blocks.COBBLESTONE_STAIRS.defaultBlockState().setValue(StairBlock.FACING, Direction.SOUTH);

            for(int i = 0; i < 6; ++i) {
                this.placeBlock(level, blockState, 1, 6 - i, 1 + i, box);
                this.placeBlock(level, blockState, 2, 6 - i, 1 + i, box);
                this.placeBlock(level, blockState, 3, 6 - i, 1 + i, box);
                if (i < 5) {
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 1, 5 - i, 1 + i, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 2, 5 - i, 1 + i, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 5 - i, 1 + i, box);
                }
            }

        }
    }

    public abstract static class Turn extends StrongholdPiece {
        protected static final int WIDTH = 5;
        protected static final int HEIGHT = 5;
        protected static final int DEPTH = 5;

        protected Turn(StructurePieceType arg, int i, BoundingBox arg2) {
            super(arg, i, arg2);
        }

        public Turn(StructurePieceType arg, CompoundTag arg2) {
            super(arg, arg2);
        }
    }

    public static class LeftTurn extends Turn {
        public LeftTurn(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_LEFT_TURN, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public LeftTurn(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_LEFT_TURN, tag);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            Direction direction = this.getOrientation();
            if (direction != Direction.NORTH && direction != Direction.EAST) {
                this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, 1, 1);
            } else {
                this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, 1, 1);
            }

        }

        public static LeftTurn createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, 5, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new LeftTurn(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 4, 4, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 1, 0);
            Direction direction = this.getOrientation();
            if (direction != Direction.NORTH && direction != Direction.EAST) {
                this.generateBox(level, box, 4, 1, 1, 4, 3, 3, CAVE_AIR, CAVE_AIR, false);
            } else {
                this.generateBox(level, box, 0, 1, 1, 0, 3, 3, CAVE_AIR, CAVE_AIR, false);
            }

        }
    }

    public static class RightTurn extends Turn {
        public RightTurn(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_RIGHT_TURN, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public RightTurn(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_RIGHT_TURN, tag);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            Direction direction = this.getOrientation();
            if (direction != Direction.NORTH && direction != Direction.EAST) {
                this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, 1, 1);
            } else {
                this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, 1, 1);
            }

        }

        public static RightTurn createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 5, 5, 5, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new RightTurn(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 4, 4, 4, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 1, 0);
            Direction direction = this.getOrientation();
            if (direction != Direction.NORTH && direction != Direction.EAST) {
                this.generateBox(level, box, 0, 1, 1, 0, 3, 3, CAVE_AIR, CAVE_AIR, false);
            } else {
                this.generateBox(level, box, 4, 1, 1, 4, 3, 3, CAVE_AIR, CAVE_AIR, false);
            }

        }
    }

    public static class RoomCrossing extends StrongholdPiece {
        protected static final int WIDTH = 11;
        protected static final int HEIGHT = 7;
        protected static final int DEPTH = 11;
        protected final int type;

        public RoomCrossing(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_ROOM_CROSSING, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
            this.type = random.nextInt(5);
        }

        public RoomCrossing(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_ROOM_CROSSING, tag);
            this.type = tag.getInt("Type");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putInt("Type", this.type);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 4, 1);
            this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, 1, 4);
            this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, 1, 4);
        }

        public static RoomCrossing createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -4, -1, 0, 11, 7, 11, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new RoomCrossing(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 10, 6, 10, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 4, 1, 0);
            this.generateBox(level, box, 4, 1, 10, 6, 3, 10, CAVE_AIR, CAVE_AIR, false);
            this.generateBox(level, box, 0, 1, 4, 0, 3, 6, CAVE_AIR, CAVE_AIR, false);
            this.generateBox(level, box, 10, 1, 4, 10, 3, 6, CAVE_AIR, CAVE_AIR, false);
            switch (this.type) {
                case 0:
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 1, 5, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 2, 5, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 3, 5, box);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.WEST), 4, 3, 5, box);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.EAST), 6, 3, 5, box);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.SOUTH), 5, 3, 4, box);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.NORTH), 5, 3, 6, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 4, 1, 4, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 4, 1, 5, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 4, 1, 6, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 6, 1, 4, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 6, 1, 5, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 6, 1, 6, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 5, 1, 4, box);
                    this.placeBlock(level, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), 5, 1, 6, box);
                    break;
                case 1:
                    for(int i = 0; i < 5; ++i) {
                        this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3, 1, 3 + i, box);
                        this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 7, 1, 3 + i, box);
                        this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3 + i, 1, 3, box);
                        this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 3 + i, 1, 7, box);
                    }

                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 1, 5, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 2, 5, box);
                    this.placeBlock(level, Blocks.STONE_BRICKS.defaultBlockState(), 5, 3, 5, box);
                    this.placeBlock(level, Blocks.WATER.defaultBlockState(), 5, 4, 5, box);
                    break;
                case 2:
                    for(int i = 1; i <= 9; ++i) {
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 1, 3, i, box);
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 9, 3, i, box);
                    }

                    for(int i = 1; i <= 9; ++i) {
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), i, 3, 1, box);
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), i, 3, 9, box);
                    }

                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 5, 1, 4, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 5, 1, 6, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 5, 3, 4, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 5, 3, 6, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 4, 1, 5, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 6, 1, 5, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 4, 3, 5, box);
                    this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 6, 3, 5, box);

                    for(int i = 1; i <= 3; ++i) {
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 4, i, 4, box);
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 6, i, 4, box);
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 4, i, 6, box);
                        this.placeBlock(level, Blocks.COBBLESTONE.defaultBlockState(), 6, i, 6, box);
                    }

                    this.placeBlock(level, Blocks.WALL_TORCH.defaultBlockState(), 5, 3, 5, box);

                    for(int i = 2; i <= 8; ++i) {
                        this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 2, 3, i, box);
                        this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 3, 3, i, box);
                        if (i <= 3 || i >= 7) {
                            this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 4, 3, i, box);
                            this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 5, 3, i, box);
                            this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 6, 3, i, box);
                        }

                        this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 7, 3, i, box);
                        this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 8, 3, i, box);
                    }

                    BlockState blockState = (BlockState)Blocks.LADDER.defaultBlockState().setValue(LadderBlock.FACING, Direction.WEST);
                    this.placeBlock(level, blockState, 9, 1, 3, box);
                    this.placeBlock(level, blockState, 9, 2, 3, box);
                    this.placeBlock(level, blockState, 9, 3, 3, box);
                    this.createChest(level, box, random, 3, 4, 8, BuiltInLootTables.STRONGHOLD_CROSSING);
            }

        }
    }

    public static class PrisonHall extends StrongholdPiece {
        protected static final int WIDTH = 9;
        protected static final int HEIGHT = 5;
        protected static final int DEPTH = 11;

        public PrisonHall(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_PRISON_HALL, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
        }

        public PrisonHall(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_PRISON_HALL, tag);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 1, 1);
        }

        public static PrisonHall createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -1, -1, 0, 9, 5, 11, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new PrisonHall(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 8, 4, 10, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 1, 1, 0);
            this.generateBox(level, box, 1, 1, 10, 3, 3, 10, CAVE_AIR, CAVE_AIR, false);
            this.generateBox(level, box, 4, 1, 1, 4, 3, 1, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 1, 3, 4, 3, 3, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 1, 7, 4, 3, 7, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 1, 9, 4, 3, 9, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);

            for(int i = 1; i <= 3; ++i) {
                this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true), 4, i, 4, box);
                this.placeBlock(level, (BlockState)((BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true)).setValue(IronBarsBlock.EAST, true), 4, i, 5, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true), 4, i, 6, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true)).setValue(IronBarsBlock.EAST, true), 5, i, 5, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true)).setValue(IronBarsBlock.EAST, true), 6, i, 5, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true)).setValue(IronBarsBlock.EAST, true), 7, i, 5, box);
            }

            this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true), 4, 3, 2, box);
            this.placeBlock(level, (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true), 4, 3, 8, box);
            BlockState blockState = (BlockState)Blocks.IRON_DOOR.defaultBlockState().setValue(DoorBlock.FACING, Direction.WEST);
            BlockState blockState2 = (BlockState)((BlockState)Blocks.IRON_DOOR.defaultBlockState().setValue(DoorBlock.FACING, Direction.WEST)).setValue(DoorBlock.HALF, DoubleBlockHalf.UPPER);
            this.placeBlock(level, blockState, 4, 1, 2, box);
            this.placeBlock(level, blockState2, 4, 2, 2, box);
            this.placeBlock(level, blockState, 4, 1, 8, box);
            this.placeBlock(level, blockState2, 4, 2, 8, box);
        }
    }

    public static class Library extends StrongholdPiece {
        protected static final int WIDTH = 14;
        protected static final int HEIGHT = 6;
        protected static final int TALL_HEIGHT = 11;
        protected static final int DEPTH = 15;
        private final boolean isTall;

        public Library(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_LIBRARY, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
            this.isTall = box.getYSpan() > 6;
        }

        public Library(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_LIBRARY, tag);
            this.isTall = tag.getBoolean("Tall");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("Tall", this.isTall);
        }

        public static Library createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -4, -1, 0, 14, 11, 15, orientation);
            if (!isOkBox(boundingBox) || pieces.findCollisionPiece(boundingBox) != null) {
                boundingBox = BoundingBox.orientBox(x, y, z, -4, -1, 0, 14, 6, 15, orientation);
                if (!isOkBox(boundingBox) || pieces.findCollisionPiece(boundingBox) != null) {
                    return null;
                }
            }

            return new Library(genDepth, random, boundingBox, orientation);
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            int i = 11;
            if (!this.isTall) {
                i = 6;
            }

            this.generateBox(level, box, 0, 0, 0, 13, i - 1, 14, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 4, 1, 0);
            this.generateMaybeBox(level, box, random, 0.07F, 2, 1, 1, 11, 4, 13, Blocks.COBWEB.defaultBlockState(), Blocks.COBWEB.defaultBlockState(), false, false);
            int j = 1;
            int k = 12;

            for(int l = 1; l <= 13; ++l) {
                if ((l - 1) % 4 == 0) {
                    this.generateBox(level, box, 1, 1, l, 1, 4, l, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                    this.generateBox(level, box, 12, 1, l, 12, 4, l, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.EAST), 2, 3, l, box);
                    this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.WEST), 11, 3, l, box);
                    if (this.isTall) {
                        this.generateBox(level, box, 1, 6, l, 1, 9, l, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                        this.generateBox(level, box, 12, 6, l, 12, 9, l, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                    }
                } else {
                    this.generateBox(level, box, 1, 1, l, 1, 4, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                    this.generateBox(level, box, 12, 1, l, 12, 4, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                    if (this.isTall) {
                        this.generateBox(level, box, 1, 6, l, 1, 9, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                        this.generateBox(level, box, 12, 6, l, 12, 9, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                    }
                }
            }

            for(int l = 3; l < 12; l += 2) {
                this.generateBox(level, box, 3, 1, l, 4, 3, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                this.generateBox(level, box, 6, 1, l, 7, 3, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
                this.generateBox(level, box, 9, 1, l, 10, 3, l, Blocks.BOOKSHELF.defaultBlockState(), Blocks.BOOKSHELF.defaultBlockState(), false);
            }

            if (this.isTall) {
                this.generateBox(level, box, 1, 5, 1, 3, 5, 13, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                this.generateBox(level, box, 10, 5, 1, 12, 5, 13, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                this.generateBox(level, box, 4, 5, 1, 9, 5, 2, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                this.generateBox(level, box, 4, 5, 12, 9, 5, 13, Blocks.OAK_PLANKS.defaultBlockState(), Blocks.OAK_PLANKS.defaultBlockState(), false);
                this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 9, 5, 11, box);
                this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 8, 5, 11, box);
                this.placeBlock(level, Blocks.OAK_PLANKS.defaultBlockState(), 9, 5, 10, box);
                BlockState blockState = (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.WEST, true)).setValue(FenceBlock.EAST, true);
                BlockState blockState2 = (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.NORTH, true)).setValue(FenceBlock.SOUTH, true);
                this.generateBox(level, box, 3, 6, 3, 3, 6, 11, blockState2, blockState2, false);
                this.generateBox(level, box, 10, 6, 3, 10, 6, 9, blockState2, blockState2, false);
                this.generateBox(level, box, 4, 6, 2, 9, 6, 2, blockState, blockState, false);
                this.generateBox(level, box, 4, 6, 12, 7, 6, 12, blockState, blockState, false);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.NORTH, true)).setValue(FenceBlock.EAST, true), 3, 6, 2, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.SOUTH, true)).setValue(FenceBlock.EAST, true), 3, 6, 12, box);
                this.placeBlock(level, (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.NORTH, true)).setValue(FenceBlock.WEST, true), 10, 6, 2, box);

                for(int m = 0; m <= 2; ++m) {
                    this.placeBlock(level, (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.SOUTH, true)).setValue(FenceBlock.WEST, true), 8 + m, 6, 12 - m, box);
                    if (m != 2) {
                        this.placeBlock(level, (BlockState)((BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.NORTH, true)).setValue(FenceBlock.EAST, true), 8 + m, 6, 11 - m, box);
                    }
                }

                BlockState blockState3 = (BlockState)Blocks.LADDER.defaultBlockState().setValue(LadderBlock.FACING, Direction.SOUTH);
                this.placeBlock(level, blockState3, 10, 1, 13, box);
                this.placeBlock(level, blockState3, 10, 2, 13, box);
                this.placeBlock(level, blockState3, 10, 3, 13, box);
                this.placeBlock(level, blockState3, 10, 4, 13, box);
                this.placeBlock(level, blockState3, 10, 5, 13, box);
                this.placeBlock(level, blockState3, 10, 6, 13, box);
                this.placeBlock(level, blockState3, 10, 7, 13, box);
                int n = 7;
                int o = 7;
                BlockState blockState4 = (BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.EAST, true);
                this.placeBlock(level, blockState4, 6, 9, 7, box);
                BlockState blockState5 = (BlockState)Blocks.OAK_FENCE.defaultBlockState().setValue(FenceBlock.WEST, true);
                this.placeBlock(level, blockState5, 7, 9, 7, box);
                this.placeBlock(level, blockState4, 6, 8, 7, box);
                this.placeBlock(level, blockState5, 7, 8, 7, box);
                BlockState blockState6 = (BlockState)((BlockState)blockState2.setValue(FenceBlock.WEST, true)).setValue(FenceBlock.EAST, true);
                this.placeBlock(level, blockState6, 6, 7, 7, box);
                this.placeBlock(level, blockState6, 7, 7, 7, box);
                this.placeBlock(level, blockState4, 5, 7, 7, box);
                this.placeBlock(level, blockState5, 8, 7, 7, box);
                this.placeBlock(level, (BlockState)blockState4.setValue(FenceBlock.NORTH, true), 6, 7, 6, box);
                this.placeBlock(level, (BlockState)blockState4.setValue(FenceBlock.SOUTH, true), 6, 7, 8, box);
                this.placeBlock(level, (BlockState)blockState5.setValue(FenceBlock.NORTH, true), 7, 7, 6, box);
                this.placeBlock(level, (BlockState)blockState5.setValue(FenceBlock.SOUTH, true), 7, 7, 8, box);
                BlockState blockState7 = Blocks.TORCH.defaultBlockState();
                this.placeBlock(level, blockState7, 5, 8, 7, box);
                this.placeBlock(level, blockState7, 8, 8, 7, box);
                this.placeBlock(level, blockState7, 6, 8, 6, box);
                this.placeBlock(level, blockState7, 6, 8, 8, box);
                this.placeBlock(level, blockState7, 7, 8, 6, box);
                this.placeBlock(level, blockState7, 7, 8, 8, box);
            }

            this.createChest(level, box, random, 3, 3, 5, BuiltInLootTables.STRONGHOLD_LIBRARY);
            if (this.isTall) {
                this.placeBlock(level, CAVE_AIR, 12, 9, 1, box);
                this.createChest(level, box, random, 12, 8, 1, BuiltInLootTables.STRONGHOLD_LIBRARY);
            }

        }
    }

    public static class FiveCrossing extends StrongholdPiece {
        protected static final int WIDTH = 10;
        protected static final int HEIGHT = 9;
        protected static final int DEPTH = 11;
        private final boolean leftLow;
        private final boolean leftHigh;
        private final boolean rightLow;
        private final boolean rightHigh;

        public FiveCrossing(int genDepth, RandomSource random, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_FIVE_CROSSING, genDepth, box);
            this.setOrientation(orientation);
            this.entryDoor = this.randomSmallDoor(random);
            this.leftLow = random.nextBoolean();
            this.leftHigh = random.nextBoolean();
            this.rightLow = random.nextBoolean();
            this.rightHigh = random.nextInt(3) > 0;
        }

        public FiveCrossing(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_FIVE_CROSSING, tag);
            this.leftLow = tag.getBoolean("leftLow");
            this.leftHigh = tag.getBoolean("leftHigh");
            this.rightLow = tag.getBoolean("rightLow");
            this.rightHigh = tag.getBoolean("rightHigh");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("leftLow", this.leftLow);
            tag.putBoolean("leftHigh", this.leftHigh);
            tag.putBoolean("rightLow", this.rightLow);
            tag.putBoolean("rightHigh", this.rightHigh);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            int i = 3;
            int j = 5;
            Direction direction = this.getOrientation();
            if (direction == Direction.WEST || direction == Direction.NORTH) {
                i = 8 - i;
                j = 8 - j;
            }

            this.generateSmallDoorChildForward((StartPiece)piece, pieces, random, 5, 1);
            if (this.leftLow) {
                this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, i, 1);
            }

            if (this.leftHigh) {
                this.generateSmallDoorChildLeft((StartPiece)piece, pieces, random, j, 7);
            }

            if (this.rightLow) {
                this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, i, 1);
            }

            if (this.rightHigh) {
                this.generateSmallDoorChildRight((StartPiece)piece, pieces, random, j, 7);
            }

        }

        public static FiveCrossing createPiece(StructurePieceAccessor pieces, RandomSource random, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -4, -3, 0, 10, 9, 11, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new FiveCrossing(genDepth, random, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 9, 8, 10, true, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, this.entryDoor, 4, 3, 0);
            if (this.leftLow) {
                this.generateBox(level, box, 0, 3, 1, 0, 5, 3, CAVE_AIR, CAVE_AIR, false);
            }

            if (this.rightLow) {
                this.generateBox(level, box, 9, 3, 1, 9, 5, 3, CAVE_AIR, CAVE_AIR, false);
            }

            if (this.leftHigh) {
                this.generateBox(level, box, 0, 5, 7, 0, 7, 9, CAVE_AIR, CAVE_AIR, false);
            }

            if (this.rightHigh) {
                this.generateBox(level, box, 9, 5, 7, 9, 7, 9, CAVE_AIR, CAVE_AIR, false);
            }

            this.generateBox(level, box, 5, 1, 10, 7, 3, 10, CAVE_AIR, CAVE_AIR, false);
            this.generateBox(level, box, 1, 2, 1, 8, 2, 6, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 1, 5, 4, 4, 9, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 8, 1, 5, 8, 4, 9, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 1, 4, 7, 3, 4, 9, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 1, 3, 5, 3, 3, 6, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 1, 3, 4, 3, 3, 4, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 1, 4, 6, 3, 4, 6, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 5, 1, 7, 7, 1, 8, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 5, 1, 9, 7, 1, 9, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 5, 2, 7, 7, 2, 7, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 4, 5, 7, 4, 5, 9, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 8, 5, 7, 8, 5, 9, Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), Blocks.SMOOTH_STONE_SLAB.defaultBlockState(), false);
            this.generateBox(level, box, 5, 5, 7, 7, 5, 9, (BlockState)Blocks.SMOOTH_STONE_SLAB.defaultBlockState().setValue(SlabBlock.TYPE, SlabType.DOUBLE), (BlockState)Blocks.SMOOTH_STONE_SLAB.defaultBlockState().setValue(SlabBlock.TYPE, SlabType.DOUBLE), false);
            this.placeBlock(level, (BlockState)Blocks.WALL_TORCH.defaultBlockState().setValue(WallTorchBlock.FACING, Direction.SOUTH), 6, 5, 6, box);
        }
    }

    public static class PortalRoom extends StrongholdPiece {
        protected static final int WIDTH = 11;
        protected static final int HEIGHT = 8;
        protected static final int DEPTH = 16;
        private boolean hasPlacedSpawner;

        public PortalRoom(int genDepth, BoundingBox box, Direction orientation) {
            super(StructurePieceType.STRONGHOLD_PORTAL_ROOM, genDepth, box);
            this.setOrientation(orientation);
        }

        public PortalRoom(CompoundTag tag) {
            super(StructurePieceType.STRONGHOLD_PORTAL_ROOM, tag);
            this.hasPlacedSpawner = tag.getBoolean("Mob");
        }

        protected void addAdditionalSaveData(StructurePieceSerializationContext context, CompoundTag tag) {
            super.addAdditionalSaveData(context, tag);
            tag.putBoolean("Mob", this.hasPlacedSpawner);
        }

        public void addChildren(StructurePiece piece, StructurePieceAccessor pieces, RandomSource random) {
            if (piece != null) {
                ((StartPiece)piece).portalRoomPiece = this;
            }

        }

        public static PortalRoom createPiece(StructurePieceAccessor pieces, int x, int y, int z, Direction orientation, int genDepth) {
            BoundingBox boundingBox = BoundingBox.orientBox(x, y, z, -4, -1, 0, 11, 8, 16, orientation);
            return isOkBox(boundingBox) && pieces.findCollisionPiece(boundingBox) == null ? new PortalRoom(genDepth, boundingBox, orientation) : null;
        }

        public void postProcess(WorldGenLevel level, StructureManager structureManager, ChunkGenerator generator, RandomSource random, BoundingBox box, ChunkPos chunkPos, BlockPos pos) {
            this.generateBox(level, box, 0, 0, 0, 10, 7, 15, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateSmallDoor(level, random, box, StrongholdPieces.StrongholdPiece.SmallDoorType.GRATES, 4, 1, 0);
            int i = 6;
            this.generateBox(level, box, 1, 6, 1, 1, 6, 14, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 9, 6, 1, 9, 6, 14, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 2, 6, 1, 8, 6, 2, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 2, 6, 14, 8, 6, 14, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 1, 1, 1, 2, 1, 4, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 8, 1, 1, 9, 1, 4, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 1, 1, 1, 1, 1, 3, Blocks.LAVA.defaultBlockState(), Blocks.LAVA.defaultBlockState(), false);
            this.generateBox(level, box, 9, 1, 1, 9, 1, 3, Blocks.LAVA.defaultBlockState(), Blocks.LAVA.defaultBlockState(), false);
            this.generateBox(level, box, 3, 1, 8, 7, 1, 12, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 1, 9, 6, 1, 11, Blocks.LAVA.defaultBlockState(), Blocks.LAVA.defaultBlockState(), false);
            BlockState blockState = (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.NORTH, true)).setValue(IronBarsBlock.SOUTH, true);
            BlockState blockState2 = (BlockState)((BlockState)Blocks.IRON_BARS.defaultBlockState().setValue(IronBarsBlock.WEST, true)).setValue(IronBarsBlock.EAST, true);

            for(int j = 3; j < 14; j += 2) {
                this.generateBox(level, box, 0, 3, j, 0, 4, j, blockState, blockState, false);
                this.generateBox(level, box, 10, 3, j, 10, 4, j, blockState, blockState, false);
            }

            for(int j = 2; j < 9; j += 2) {
                this.generateBox(level, box, j, 3, 15, j, 4, 15, blockState2, blockState2, false);
            }

            BlockState blockState3 = (BlockState)Blocks.STONE_BRICK_STAIRS.defaultBlockState().setValue(StairBlock.FACING, Direction.NORTH);
            this.generateBox(level, box, 4, 1, 5, 6, 1, 7, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 2, 6, 6, 2, 7, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);
            this.generateBox(level, box, 4, 3, 7, 6, 3, 7, false, random, StrongholdPieces.SMOOTH_STONE_SELECTOR);

            for(int k = 4; k <= 6; ++k) {
                this.placeBlock(level, blockState3, k, 1, 4, box);
                this.placeBlock(level, blockState3, k, 2, 5, box);
                this.placeBlock(level, blockState3, k, 3, 6, box);
            }

            BlockState blockState4 = (BlockState)Blocks.END_PORTAL_FRAME.defaultBlockState().setValue(EndPortalFrameBlock.FACING, Direction.NORTH);
            BlockState blockState5 = (BlockState)Blocks.END_PORTAL_FRAME.defaultBlockState().setValue(EndPortalFrameBlock.FACING, Direction.SOUTH);
            BlockState blockState6 = (BlockState)Blocks.END_PORTAL_FRAME.defaultBlockState().setValue(EndPortalFrameBlock.FACING, Direction.EAST);
            BlockState blockState7 = (BlockState)Blocks.END_PORTAL_FRAME.defaultBlockState().setValue(EndPortalFrameBlock.FACING, Direction.WEST);
            boolean bl = true;
            boolean[] bls = new boolean[12];

            for(int l = 0; l < bls.length; ++l) {
                bls[l] = random.nextFloat() > 0.9F;
                bl &= bls[l];
            }

            this.placeBlock(level, (BlockState)blockState4.setValue(EndPortalFrameBlock.HAS_EYE, bls[0]), 4, 3, 8, box);
            this.placeBlock(level, (BlockState)blockState4.setValue(EndPortalFrameBlock.HAS_EYE, bls[1]), 5, 3, 8, box);
            this.placeBlock(level, (BlockState)blockState4.setValue(EndPortalFrameBlock.HAS_EYE, bls[2]), 6, 3, 8, box);
            this.placeBlock(level, (BlockState)blockState5.setValue(EndPortalFrameBlock.HAS_EYE, bls[3]), 4, 3, 12, box);
            this.placeBlock(level, (BlockState)blockState5.setValue(EndPortalFrameBlock.HAS_EYE, bls[4]), 5, 3, 12, box);
            this.placeBlock(level, (BlockState)blockState5.setValue(EndPortalFrameBlock.HAS_EYE, bls[5]), 6, 3, 12, box);
            this.placeBlock(level, (BlockState)blockState6.setValue(EndPortalFrameBlock.HAS_EYE, bls[6]), 3, 3, 9, box);
            this.placeBlock(level, (BlockState)blockState6.setValue(EndPortalFrameBlock.HAS_EYE, bls[7]), 3, 3, 10, box);
            this.placeBlock(level, (BlockState)blockState6.setValue(EndPortalFrameBlock.HAS_EYE, bls[8]), 3, 3, 11, box);
            this.placeBlock(level, (BlockState)blockState7.setValue(EndPortalFrameBlock.HAS_EYE, bls[9]), 7, 3, 9, box);
            this.placeBlock(level, (BlockState)blockState7.setValue(EndPortalFrameBlock.HAS_EYE, bls[10]), 7, 3, 10, box);
            this.placeBlock(level, (BlockState)blockState7.setValue(EndPortalFrameBlock.HAS_EYE, bls[11]), 7, 3, 11, box);
            if (bl) {
                BlockState blockState8 = Blocks.END_PORTAL.defaultBlockState();
                this.placeBlock(level, blockState8, 4, 3, 9, box);
                this.placeBlock(level, blockState8, 5, 3, 9, box);
                this.placeBlock(level, blockState8, 6, 3, 9, box);
                this.placeBlock(level, blockState8, 4, 3, 10, box);
                this.placeBlock(level, blockState8, 5, 3, 10, box);
                this.placeBlock(level, blockState8, 6, 3, 10, box);
                this.placeBlock(level, blockState8, 4, 3, 11, box);
                this.placeBlock(level, blockState8, 5, 3, 11, box);
                this.placeBlock(level, blockState8, 6, 3, 11, box);
            }

            if (!this.hasPlacedSpawner) {
                BlockPos blockPos = this.getWorldPos(5, 3, 6);
                if (box.isInside(blockPos)) {
                    this.hasPlacedSpawner = true;
                    level.setBlock(blockPos, Blocks.SPAWNER.defaultBlockState(), 2);
                    BlockEntity blockEntity = level.getBlockEntity(blockPos);
                    if (blockEntity instanceof SpawnerBlockEntity) {
                        SpawnerBlockEntity spawnerBlockEntity = (SpawnerBlockEntity)blockEntity;
                        spawnerBlockEntity.setEntityId(EntityType.SILVERFISH, random);
                    }
                }
            }

        }
    }

    static class SmoothStoneSelector extends StructurePiece.BlockSelector {
        public void next(RandomSource random, int x, int y, int z, boolean wall) {
            if (wall) {
                float f = random.nextFloat();
                if (f < 0.2F) {
                    this.next = Blocks.CRACKED_STONE_BRICKS.defaultBlockState();
                } else if (f < 0.5F) {
                    this.next = Blocks.MOSSY_STONE_BRICKS.defaultBlockState();
                } else if (f < 0.55F) {
                    this.next = Blocks.INFESTED_STONE_BRICKS.defaultBlockState();
                } else {
                    this.next = Blocks.STONE_BRICKS.defaultBlockState();
                }
            } else {
                this.next = Blocks.CAVE_AIR.defaultBlockState();
            }

        }
    }
}
