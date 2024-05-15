.class Lsun/nio/ch/NativeObject;
.super Ljava/lang/Object;
.source "NativeObject.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist byteOrder:Ljava/nio/ByteOrder;

.field private static blacklist pageSize:I

.field protected static final blacklist unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final blacklist address:J

.field protected blacklist allocationAddress:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    nop

    .line 43
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    .line 365
    const/4 v0, 0x0

    sput-object v0, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    .line 392
    const/4 v0, -0x1

    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    return-void
.end method

.method protected constructor blacklist <init>(IZ)V
    .registers 10
    .param p1, "size"    # I
    .param p2, "pageAligned"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p2, :cond_11

    .line 75
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 76
    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    goto :goto_29

    .line 78
    :cond_11
    invoke-static {}, Lsun/nio/ch/NativeObject;->pageSize()I

    move-result v0

    .line 79
    .local v0, "ps":I
    sget-object v1, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    add-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v1

    .line 80
    .local v1, "a":J
    iput-wide v1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 81
    int-to-long v3, v0

    add-long/2addr v3, v1

    add-int/lit8 v5, v0, -0x1

    int-to-long v5, v5

    and-long/2addr v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 83
    .end local v0    # "ps":I
    .end local v1    # "a":J
    :goto_29
    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "address"    # J

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 59
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 60
    return-void
.end method

.method constructor blacklist <init>(JJ)V
    .registers 7
    .param p1, "address"    # J
    .param p3, "offset"    # J

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    .line 68
    add-long v0, p1, p3

    iput-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    .line 69
    return-void
.end method

.method static blacklist addressSize()I
    .registers 1

    .line 361
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static blacklist byteOrder()Ljava/nio/ByteOrder;
    .registers 5

    .line 373
    sget-object v0, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    if-eqz v0, :cond_5

    .line 374
    return-object v0

    .line 375
    :cond_5
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v1

    .line 377
    .local v1, "a":J
    const-wide v3, 0x102030405060708L

    :try_start_12
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 378
    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v3

    .line 379
    .local v3, "b":B
    sparse-switch v3, :sswitch_data_34

    .line 383
    goto :goto_26

    .line 381
    :sswitch_1d
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v4, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    goto :goto_26

    .line 380
    :sswitch_22
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v4, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2d

    .line 386
    .end local v3    # "b":B
    :goto_26
    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 387
    nop

    .line 388
    sget-object v0, Lsun/nio/ch/NativeObject;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0

    .line 386
    :catchall_2d
    move-exception v0

    sget-object v3, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1, v2}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 387
    throw v0

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_22
        0x8 -> :sswitch_1d
    .end sparse-switch
.end method

.method static blacklist pageSize()I
    .registers 2

    .line 400
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 401
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    sput v0, Lsun/nio/ch/NativeObject;->pageSize:I

    .line 402
    :cond_d
    sget v0, Lsun/nio/ch/NativeObject;->pageSize:I

    return v0
.end method


# virtual methods
.method blacklist address()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->address:J

    return-wide v0
.end method

.method blacklist allocationAddress()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lsun/nio/ch/NativeObject;->allocationAddress:J

    return-wide v0
.end method

.method final blacklist getByte(I)B
    .registers 7
    .param p1, "offset"    # I

    .line 176
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method final blacklist getChar(I)C
    .registers 7
    .param p1, "offset"    # I

    .line 230
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v0

    return v0
.end method

.method final blacklist getDouble(I)D
    .registers 7
    .param p1, "offset"    # I

    .line 338
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method final blacklist getFloat(I)F
    .registers 7
    .param p1, "offset"    # I

    .line 311
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    return v0
.end method

.method final blacklist getInt(I)I
    .registers 7
    .param p1, "offset"    # I

    .line 257
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method final blacklist getLong(I)J
    .registers 7
    .param p1, "offset"    # I

    .line 284
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getObject(I)Lsun/nio/ch/NativeObject;
    .registers 9
    .param p1, "offset"    # I

    .line 124
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "newAddress":J
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    move-result v2

    sparse-switch v2, :sswitch_data_30

    .line 133
    new-instance v2, Ljava/lang/InternalError;

    const-string v3, "Address size not supported"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :sswitch_11
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v3, p1

    iget-wide v5, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    .line 128
    goto :goto_2a

    .line 130
    :sswitch_1c
    sget-object v2, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v3, p1

    iget-wide v5, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    int-to-long v0, v2

    .line 131
    nop

    .line 136
    :goto_2a
    new-instance v2, Lsun/nio/ch/NativeObject;

    invoke-direct {v2, v0, v1}, Lsun/nio/ch/NativeObject;-><init>(J)V

    return-object v2

    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_1c
        0x8 -> :sswitch_11
    .end sparse-switch
.end method

.method final blacklist getShort(I)S
    .registers 7
    .param p1, "offset"    # I

    .line 203
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method final blacklist putByte(IB)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "value"    # B

    .line 190
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 191
    return-void
.end method

.method final blacklist putChar(IC)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "value"    # C

    .line 244
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putChar(JC)V

    .line 245
    return-void
.end method

.method final blacklist putDouble(ID)V
    .registers 9
    .param p1, "offset"    # I
    .param p2, "value"    # D

    .line 352
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2, p3}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 353
    return-void
.end method

.method final blacklist putFloat(IF)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "value"    # F

    .line 325
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 326
    return-void
.end method

.method final blacklist putInt(II)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 271
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 272
    return-void
.end method

.method final blacklist putLong(IJ)V
    .registers 9
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 298
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 299
    return-void
.end method

.method blacklist putObject(ILsun/nio/ch/NativeObject;)V
    .registers 7
    .param p1, "offset"    # I
    .param p2, "ob"    # Lsun/nio/ch/NativeObject;

    .line 151
    invoke-static {}, Lsun/nio/ch/NativeObject;->addressSize()I

    move-result v0

    sparse-switch v0, :sswitch_data_20

    .line 159
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Address size not supported"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :sswitch_f
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    invoke-virtual {p0, p1, v0, v1}, Lsun/nio/ch/NativeObject;->putLong(IJ)V

    .line 154
    goto :goto_1f

    .line 156
    :sswitch_15
    iget-wide v0, p2, Lsun/nio/ch/NativeObject;->address:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lsun/nio/ch/NativeObject;->putInt(II)V

    .line 157
    nop

    .line 161
    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x4 -> :sswitch_15
        0x8 -> :sswitch_f
    .end sparse-switch
.end method

.method final blacklist putShort(IS)V
    .registers 8
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .line 217
    sget-object v0, Lsun/nio/ch/NativeObject;->unsafe:Lsun/misc/Unsafe;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 218
    return-void
.end method

.method blacklist subObject(I)Lsun/nio/ch/NativeObject;
    .registers 7
    .param p1, "offset"    # I

    .line 109
    new-instance v0, Lsun/nio/ch/NativeObject;

    int-to-long v1, p1

    iget-wide v3, p0, Lsun/nio/ch/NativeObject;->address:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lsun/nio/ch/NativeObject;-><init>(J)V

    return-object v0
.end method
