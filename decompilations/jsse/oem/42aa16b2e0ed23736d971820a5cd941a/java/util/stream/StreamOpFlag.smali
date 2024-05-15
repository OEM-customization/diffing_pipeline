.class public final enum Ljava/util/stream/StreamOpFlag;
.super Ljava/lang/Enum;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamOpFlag$MaskBuilder;,
        Ljava/util/stream/StreamOpFlag$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/stream/StreamOpFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/stream/StreamOpFlag;

.field private static final greylist-max-o CLEAR_BITS:I = 0x2

.field public static final enum greylist-max-o DISTINCT:Ljava/util/stream/StreamOpFlag;

.field private static final greylist-max-o FLAG_MASK:I

.field private static final greylist-max-o FLAG_MASK_IS:I

.field private static final greylist-max-o FLAG_MASK_NOT:I

.field public static final greylist-max-o INITIAL_OPS_VALUE:I

.field public static final greylist-max-o IS_DISTINCT:I

.field public static final greylist-max-o IS_ORDERED:I

.field public static final greylist-max-o IS_SHORT_CIRCUIT:I

.field public static final greylist-max-o IS_SIZED:I

.field public static final greylist-max-o IS_SORTED:I

.field public static final greylist-max-o NOT_DISTINCT:I

.field public static final greylist-max-o NOT_ORDERED:I

.field public static final greylist-max-o NOT_SIZED:I

.field public static final greylist-max-o NOT_SORTED:I

.field public static final greylist-max-o OP_MASK:I

.field public static final enum greylist-max-o ORDERED:Ljava/util/stream/StreamOpFlag;

.field private static final greylist-max-o PRESERVE_BITS:I = 0x3

.field private static final greylist-max-o SET_BITS:I = 0x1

.field public static final enum greylist-max-o SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

.field public static final enum greylist-max-o SIZED:Ljava/util/stream/StreamOpFlag;

.field public static final enum greylist-max-o SORTED:Ljava/util/stream/StreamOpFlag;

.field public static final greylist-max-o SPLITERATOR_CHARACTERISTICS_MASK:I

.field public static final greylist-max-o STREAM_MASK:I

.field public static final greylist-max-o TERMINAL_OP_MASK:I

.field public static final greylist-max-o UPSTREAM_TERMINAL_OP_MASK:I


# instance fields
.field private final greylist-max-o bitPosition:I

.field private final greylist-max-o clear:I

.field private final greylist-max-o maskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o preserve:I

.field private final greylist-max-o set:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 249
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    .line 250
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "DISTINCT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    .line 270
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    .line 271
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SORTED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v4, v1}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    .line 283
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    .line 284
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->setAndClear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    .line 285
    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "ORDERED"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v5, v1}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    .line 298
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    .line 299
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->clear(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SIZED"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v6, v1}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    .line 329
    new-instance v0, Ljava/util/stream/StreamOpFlag;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    .line 330
    invoke-static {v1}, Ljava/util/stream/StreamOpFlag;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-virtual {v1, v2}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v1

    const-string v2, "SHORT_CIRCUIT"

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-direct {v0, v2, v7, v8, v1}, Ljava/util/stream/StreamOpFlag;-><init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V

    sput-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    .line 206
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/util/stream/StreamOpFlag;

    sget-object v2, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    aput-object v2, v1, v4

    sget-object v2, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    aput-object v2, v1, v5

    sget-object v2, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    .line 538
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->SPLITERATOR:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    .line 544
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    .line 550
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->OP_MASK:I

    .line 556
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->TERMINAL_OP_MASK:I

    .line 562
    sget-object v0, Ljava/util/stream/StreamOpFlag$Type;->UPSTREAM_TERMINAL_OP:Ljava/util/stream/StreamOpFlag$Type;

    invoke-static {v0}, Ljava/util/stream/StreamOpFlag;->createMask(Ljava/util/stream/StreamOpFlag$Type;)I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->UPSTREAM_TERMINAL_OP_MASK:I

    .line 575
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->createFlagMask()I

    move-result v0

    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    .line 588
    sget v0, Ljava/util/stream/StreamOpFlag;->STREAM_MASK:I

    sput v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    .line 593
    shl-int/lit8 v1, v0, 0x1

    sput v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    .line 600
    or-int/2addr v0, v1

    sput v0, Ljava/util/stream/StreamOpFlag;->INITIAL_OPS_VALUE:I

    .line 606
    sget-object v0, Ljava/util/stream/StreamOpFlag;->DISTINCT:Ljava/util/stream/StreamOpFlag;

    iget v1, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava/util/stream/StreamOpFlag;->IS_DISTINCT:I

    .line 612
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    .line 618
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SORTED:Ljava/util/stream/StreamOpFlag;

    iget v1, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava/util/stream/StreamOpFlag;->IS_SORTED:I

    .line 624
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SORTED:I

    .line 630
    sget-object v0, Ljava/util/stream/StreamOpFlag;->ORDERED:Ljava/util/stream/StreamOpFlag;

    iget v1, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava/util/stream/StreamOpFlag;->IS_ORDERED:I

    .line 636
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_ORDERED:I

    .line 642
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SIZED:Ljava/util/stream/StreamOpFlag;

    iget v1, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v1, Ljava/util/stream/StreamOpFlag;->IS_SIZED:I

    .line 648
    iget v0, v0, Ljava/util/stream/StreamOpFlag;->clear:I

    sput v0, Ljava/util/stream/StreamOpFlag;->NOT_SIZED:I

    .line 654
    sget-object v0, Ljava/util/stream/StreamOpFlag;->SHORT_CIRCUIT:Ljava/util/stream/StreamOpFlag;

    iget v0, v0, Ljava/util/stream/StreamOpFlag;->set:I

    sput v0, Ljava/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/util/stream/StreamOpFlag$MaskBuilder;)V
    .registers 5
    .param p3, "position"    # I
    .param p4, "maskBuilder"    # Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/StreamOpFlag$MaskBuilder;",
            ")V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 448
    invoke-virtual {p4}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->build()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    .line 450
    const/4 p1, 0x2

    mul-int/2addr p3, p1

    .line 451
    iput p3, p0, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    .line 452
    const/4 p2, 0x1

    shl-int/2addr p2, p3

    iput p2, p0, Ljava/util/stream/StreamOpFlag;->set:I

    .line 453
    shl-int/2addr p1, p3

    iput p1, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    .line 454
    const/4 p1, 0x3

    shl-int/2addr p1, p3

    iput p1, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    .line 455
    return-void
.end method

.method public static greylist-max-o combineOpFlags(II)I
    .registers 3
    .param p0, "newStreamOrOpFlags"    # I
    .param p1, "prevCombOpFlags"    # I

    .line 716
    invoke-static {p0}, Ljava/util/stream/StreamOpFlag;->getMask(I)I

    move-result v0

    and-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method

.method private static greylist-max-o createFlagMask()I
    .registers 6

    .line 578
    const/4 v0, 0x0

    .line 579
    .local v0, "mask":I
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 580
    .local v4, "flag":Ljava/util/stream/StreamOpFlag;
    iget v5, v4, Ljava/util/stream/StreamOpFlag;->preserve:I

    or-int/2addr v0, v5

    .line 579
    .end local v4    # "flag":Ljava/util/stream/StreamOpFlag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 582
    :cond_11
    return v0
.end method

.method private static greylist-max-o createMask(Ljava/util/stream/StreamOpFlag$Type;)I
    .registers 8
    .param p0, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, "mask":I
    invoke-static {}, Ljava/util/stream/StreamOpFlag;->values()[Ljava/util/stream/StreamOpFlag;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 567
    .local v4, "flag":Ljava/util/stream/StreamOpFlag;
    iget-object v5, v4, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v4, Ljava/util/stream/StreamOpFlag;->bitPosition:I

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 566
    .end local v4    # "flag":Ljava/util/stream/StreamOpFlag;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 569
    :cond_1e
    return v0
.end method

.method public static greylist-max-o fromCharacteristics(I)I
    .registers 2
    .param p0, "characteristics"    # I

    .line 780
    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o fromCharacteristics(Ljava/util/Spliterator;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "*>;)I"
        }
    .end annotation

    .line 761
    .local p0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    invoke-interface {p0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    .line 762
    .local v0, "characteristics":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_14

    invoke-interface {p0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 765
    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, -0x5

    return v1

    .line 768
    :cond_14
    sget v1, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v1, v0

    return v1
.end method

.method private static greylist-max-o getMask(I)I
    .registers 3
    .param p0, "flags"    # I

    .line 657
    if-nez p0, :cond_5

    .line 658
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK:I

    goto :goto_12

    .line 659
    :cond_5
    sget v0, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, p0

    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_NOT:I

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    not-int v0, v0

    .line 657
    :goto_12
    return v0
.end method

.method private static greylist-max-o set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;
    .registers 4
    .param p0, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 386
    new-instance v0, Ljava/util/stream/StreamOpFlag$MaskBuilder;

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Ljava/util/stream/StreamOpFlag$Type;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Ljava/util/stream/StreamOpFlag$MaskBuilder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Ljava/util/stream/StreamOpFlag$MaskBuilder;->set(Ljava/util/stream/StreamOpFlag$Type;)Ljava/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toCharacteristics(I)I
    .registers 2
    .param p0, "streamFlags"    # I

    .line 743
    sget v0, Ljava/util/stream/StreamOpFlag;->SPLITERATOR_CHARACTERISTICS_MASK:I

    and-int/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o toStreamFlags(I)I
    .registers 3
    .param p0, "combOpFlags"    # I

    .line 732
    not-int v0, p0

    shr-int/lit8 v0, v0, 0x1

    sget v1, Ljava/util/stream/StreamOpFlag;->FLAG_MASK_IS:I

    and-int/2addr v0, v1

    and-int/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Ljava/util/stream/StreamOpFlag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 206
    const-class v0, Ljava/util/stream/StreamOpFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/stream/StreamOpFlag;

    return-object v0
.end method

.method public static greylist-max-o values()[Ljava/util/stream/StreamOpFlag;
    .registers 1

    .line 206
    sget-object v0, Ljava/util/stream/StreamOpFlag;->$VALUES:[Ljava/util/stream/StreamOpFlag;

    invoke-virtual {v0}, [Ljava/util/stream/StreamOpFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/stream/StreamOpFlag;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o canSet(Ljava/util/stream/StreamOpFlag$Type;)Z
    .registers 4
    .param p1, "t"    # Ljava/util/stream/StreamOpFlag$Type;

    .line 531
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public greylist-max-o clear()I
    .registers 2

    .line 474
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    return v0
.end method

.method public greylist-max-o isCleared(I)Z
    .registers 4
    .param p1, "flags"    # I

    .line 509
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljava/util/stream/StreamOpFlag;->clear:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isKnown(I)Z
    .registers 4
    .param p1, "flags"    # I

    .line 497
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int/2addr v0, p1

    iget v1, p0, Ljava/util/stream/StreamOpFlag;->set:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o isPreserved(I)Z
    .registers 4
    .param p1, "flags"    # I

    .line 520
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->preserve:I

    and-int v1, p1, v0

    if-ne v1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o isStreamFlag()Z
    .registers 3

    .line 484
    iget-object v0, p0, Ljava/util/stream/StreamOpFlag;->maskTable:Ljava/util/Map;

    sget-object v1, Ljava/util/stream/StreamOpFlag$Type;->STREAM:Ljava/util/stream/StreamOpFlag$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-o set()I
    .registers 2

    .line 464
    iget v0, p0, Ljava/util/stream/StreamOpFlag;->set:I

    return v0
.end method
