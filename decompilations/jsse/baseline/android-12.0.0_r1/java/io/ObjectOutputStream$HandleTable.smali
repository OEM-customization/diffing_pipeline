.class Ljava/io/ObjectOutputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation


# instance fields
.field private final greylist-max-o loadFactor:F

.field private greylist-max-o next:[I

.field private greylist-max-o objs:[Ljava/lang/Object;

.field private greylist-max-o size:I

.field private greylist-max-o spine:[I

.field private greylist-max-o threshold:I


# direct methods
.method constructor greylist-max-o <init>(IF)V
    .registers 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 2361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2362
    iput p2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    .line 2363
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    .line 2364
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    .line 2365
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    .line 2366
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    .line 2367
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$HandleTable;->clear()V

    .line 2368
    return-void
.end method

.method private greylist-max-o growEntries()V
    .registers 7

    .line 2446
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2447
    .local v1, "newLength":I
    new-array v2, v1, [I

    .line 2448
    .local v2, "newNext":[I
    iget v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2449
    iput-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    .line 2451
    new-array v0, v1, [Ljava/lang/Object;

    .line 2452
    .local v0, "newObjs":[Ljava/lang/Object;
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2453
    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    .line 2454
    return-void
.end method

.method private greylist-max-o growSpine()V
    .registers 4

    .line 2434
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    .line 2435
    array-length v1, v0

    int-to-float v1, v1

    iget v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    .line 2436
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    if-ge v0, v1, :cond_26

    .line 2438
    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    .line 2437
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2440
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private greylist-max-o hash(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2460
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o insert(Ljava/lang/Object;I)V
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "handle"    # I

    .line 2423
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 2424
    .local v0, "index":I
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aput-object p1, v2, p2

    .line 2425
    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    aget v3, v1, v0

    aput v3, v2, p2

    .line 2426
    aput p2, v1, v0

    .line 2427
    return-void
.end method


# virtual methods
.method greylist-max-o assign(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2375
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 2376
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growEntries()V

    .line 2378
    :cond_a
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->threshold:I

    if-lt v0, v1, :cond_13

    .line 2379
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$HandleTable;->growSpine()V

    .line 2381
    :cond_13
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    invoke-direct {p0, p1, v0}, Ljava/io/ObjectOutputStream$HandleTable;->insert(Ljava/lang/Object;I)V

    .line 2382
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    return v0
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 2406
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2407
    iget-object v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 2408
    iput v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    .line 2409
    return-void
.end method

.method greylist-max-o lookup(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2390
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 2391
    return v1

    .line 2393
    :cond_6
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$HandleTable;->hash(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Ljava/io/ObjectOutputStream$HandleTable;->spine:[I

    array-length v3, v2

    rem-int/2addr v0, v3

    .line 2394
    .local v0, "index":I
    aget v2, v2, v0

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_1e

    .line 2395
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->objs:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_19

    .line 2396
    return v2

    .line 2394
    :cond_19
    iget-object v3, p0, Ljava/io/ObjectOutputStream$HandleTable;->next:[I

    aget v2, v3, v2

    goto :goto_10

    .line 2399
    .end local v2    # "i":I
    :cond_1e
    return v1
.end method

.method greylist-max-o size()I
    .registers 2

    .line 2415
    iget v0, p0, Ljava/io/ObjectOutputStream$HandleTable;->size:I

    return v0
.end method
