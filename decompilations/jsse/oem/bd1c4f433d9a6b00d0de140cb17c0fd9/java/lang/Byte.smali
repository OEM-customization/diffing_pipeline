.class public final Ljava/lang/Byte;
.super Ljava/lang/Number;
.source "Byte.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Byte$ByteCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x1

.field private static final DIGITS:[C

.field public static final MAX_VALUE:B = 0x7ft

.field public static final MIN_VALUE:B = -0x80t

.field public static final SIZE:I = 0x8

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPPER_CASE_DIGITS:[C

.field private static final serialVersionUID:J = -0x63b19f7b11af0ae4L


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x24

    .line 63
    const-class v0, [B

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 532
    new-array v0, v1, [C

    fill-array-data v0, :array_1a

    sput-object v0, Ljava/lang/Byte;->DIGITS:[C

    .line 539
    new-array v0, v1, [C

    fill-array-data v0, :array_42

    sput-object v0, Ljava/lang/Byte;->UPPER_CASE_DIGITS:[C

    .line 44
    return-void

    .line 532
    nop

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    .line 539
    :array_42
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>(B)V
    .registers 2
    .param p1, "value"    # B

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 299
    iput-byte p1, p0, Ljava/lang/Byte;->value:B

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 316
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    iput-byte v0, p0, Ljava/lang/Byte;->value:B

    .line 317
    return-void
.end method

.method public static compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 458
    sub-int v0, p0, p1

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 5
    .param p0, "nm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "i":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_10

    const/16 v1, 0x7f

    if-le v0, v1, :cond_35

    .line 279
    :cond_10
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " out of range from input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_35
    int-to-byte v1, v0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public static hashCode(B)I
    .registers 1
    .param p0, "value"    # B

    .prologue
    .line 406
    return p0
.end method

.method public static parseByte(Ljava/lang/String;)B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 175
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseByte(Ljava/lang/String;I)B
    .registers 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "i":I
    const/16 v1, -0x80

    if-lt v0, v1, :cond_c

    const/16 v1, 0x7f

    if-le v0, v1, :cond_31

    .line 151
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Value out of range. Value:\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" Radix:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_31
    int-to-byte v1, v0

    return v1
.end method

.method public static toHexString(BZ)Ljava/lang/String;
    .registers 8
    .param p0, "b"    # B
    .param p1, "upperCase"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 526
    if-eqz p1, :cond_1d

    sget-object v1, Ljava/lang/Byte;->UPPER_CASE_DIGITS:[C

    .line 527
    .local v1, "digits":[C
    :goto_6
    new-array v0, v5, [C

    .line 528
    .local v0, "buf":[C
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, v0, v4

    .line 529
    and-int/lit8 v2, p0, 0xf

    aget-char v2, v1, v2

    const/4 v3, 0x1

    aput-char v2, v0, v3

    .line 530
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v2

    .line 526
    .end local v0    # "buf":[C
    .end local v1    # "digits":[C
    :cond_1d
    sget-object v1, Ljava/lang/Byte;->DIGITS:[C

    .restart local v1    # "digits":[C
    goto :goto_6
.end method

.method public static toString(B)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # B

    .prologue
    .line 74
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedInt(B)I
    .registers 2
    .param p0, "x"    # B

    .prologue
    .line 478
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toUnsignedLong(B)J
    .registers 5
    .param p0, "x"    # B

    .prologue
    .line 498
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static valueOf(B)Ljava/lang/Byte;
    .registers 4
    .param p0, "b"    # B

    .prologue
    .line 102
    const/16 v0, 0x80

    .line 103
    .local v0, "offset":I
    sget-object v1, Ljava/lang/Byte$ByteCache;->cache:[Ljava/lang/Byte;

    add-int/lit16 v2, p0, 0x80

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 231
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Byte;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 324
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public compareTo(Ljava/lang/Byte;)I
    .registers 4
    .param p1, "anotherByte"    # Ljava/lang/Byte;

    .prologue
    .line 440
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    iget-byte v1, p1, Ljava/lang/Byte;->value:B

    invoke-static {v0, v1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 426
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Ljava/lang/Byte;->compareTo(Ljava/lang/Byte;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 369
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 420
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_11

    .line 421
    iget-byte v1, p0, Ljava/lang/Byte;->value:B

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0

    .line 423
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_11
    return v0
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 360
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 394
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->hashCode(B)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 342
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 351
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 333
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-byte v0, p0, Ljava/lang/Byte;->value:B

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
