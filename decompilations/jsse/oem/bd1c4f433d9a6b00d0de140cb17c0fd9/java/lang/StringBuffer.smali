.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x2f0707d9eac8ead3L


# instance fields
.field private transient toStringCache:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 686
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 687
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "value"

    const-class v3, [C

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 688
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "count"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 689
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "shared"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 685
    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 116
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 117
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 711
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 712
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/StringBuffer;->value:[C

    .line 713
    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/lang/StringBuffer;->count:I

    .line 714
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 698
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 699
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "value"

    iget-object v2, p0, Ljava/lang/StringBuffer;->value:[C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    const-string/jumbo v1, "count"

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 701
    const-string/jumbo v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 702
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    .line 703
    return-void

    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(D)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(F)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(I)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(J)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 402
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([C)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .prologue
    .line 361
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized append(C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "c"    # C

    .prologue
    monitor-enter p0

    .line 380
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 381
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 382
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(D)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "d"    # D

    .prologue
    monitor-enter p0

    .line 418
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 419
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 420
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(F)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "f"    # F

    .prologue
    monitor-enter p0

    .line 411
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 412
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 413
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "i"    # I

    .prologue
    monitor-enter p0

    .line 387
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 388
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 389
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(J)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "lng"    # J

    .prologue
    monitor-enter p0

    .line 404
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 405
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 406
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    .prologue
    monitor-enter p0

    .line 309
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 310
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 311
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    monitor-enter p0

    .line 337
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 338
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 339
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    monitor-enter p0

    .line 349
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 350
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 351
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 262
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 263
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 264
    return-object p0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 269
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 270
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 271
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    monitor-enter p0

    .line 299
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 300
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 301
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append(Z)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "b"    # Z

    .prologue
    monitor-enter p0

    .line 373
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 374
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 375
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # [C

    .prologue
    monitor-enter p0

    .line 356
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 357
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 358
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized append([CII)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    monitor-enter p0

    .line 366
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 367
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 368
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized appendCodePoint(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "codePoint"    # I

    .prologue
    monitor-enter p0

    .line 397
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 398
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 399
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized capacity()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 201
    if-ltz p1, :cond_7

    :try_start_3
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-lt p1, v0, :cond_10

    .line 202
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aget-char v0, v0, p1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 211
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointBefore(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 219
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    monitor-enter p0

    .line 227
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete(II)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 429
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 430
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 431
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized deleteCharAt(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "index"    # I

    .prologue
    monitor-enter p0

    .line 440
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 441
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 442
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureCapacity(I)V
    .registers 3
    .param p1, "minimumCapacity"    # I

    .prologue
    monitor-enter p0

    .line 174
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 175
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChars(II[CI)V
    .registers 6
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    monitor-enter p0

    .line 245
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 246
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    monitor-enter p0

    .line 636
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 6

    .prologue
    .line 610
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(ID)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 598
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IF)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 574
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 6

    .prologue
    .line 586
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(IJ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 526
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 6

    .prologue
    .line 539
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 496
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 506
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 552
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IZ)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .prologue
    .line 516
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 6

    .prologue
    .line 483
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized insert(IC)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "c"    # C

    .prologue
    monitor-enter p0

    .line 569
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 570
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 571
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(ID)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .prologue
    .line 618
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    .line 619
    return-object p0
.end method

.method public insert(IF)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .prologue
    .line 606
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    .line 607
    return-object p0
.end method

.method public insert(II)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .prologue
    .line 582
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    .line 583
    return-object p0
.end method

.method public insert(IJ)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .prologue
    .line 594
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    .line 595
    return-object p0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 535
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 536
    return-object p0
.end method

.method public declared-synchronized insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    monitor-enter p0

    .line 547
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 549
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 501
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 502
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 503
    return-object p0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 511
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 512
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 513
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(IZ)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .prologue
    .line 560
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    .line 561
    return-object p0
.end method

.method public declared-synchronized insert(I[C)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    .prologue
    monitor-enter p0

    .line 521
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 522
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 523
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(I[CII)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    monitor-enter p0

    .line 491
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 493
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 645
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    monitor-enter p0

    .line 653
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized length()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 163
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    monitor-enter p0

    .line 235
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 451
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 452
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 453
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic reverse()Ljava/lang/AbstractStringBuilder;
    .registers 2

    .prologue
    .line 656
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reverse()Ljava/lang/StringBuffer;
    .registers 2

    .prologue
    monitor-enter p0

    .line 661
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 662
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 663
    return-object p0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCharAt(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    monitor-enter p0

    .line 254
    if-ltz p1, :cond_7

    :try_start_3
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-lt p1, v0, :cond_10

    .line 255
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_10
    const/4 v0, 0x0

    :try_start_11
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 257
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aput-char p2, v0, p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_d

    monitor-exit p0

    .line 258
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .registers 3
    .param p1, "newLength"    # I

    .prologue
    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 192
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 193
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 471
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    .prologue
    monitor-enter p0

    .line 462
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    monitor-enter p0

    .line 480
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    monitor-enter p0

    .line 668
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    if-nez v0, :cond_10

    .line 669
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    iget v1, p0, Ljava/lang/StringBuffer;->count:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 671
    :cond_10
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized trimToSize()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 182
    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 183
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
