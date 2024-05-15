.class public final Ljava/lang/StringBuffer;
.super Ljava/lang/AbstractStringBuilder;
.source "StringBuffer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = 0x2f0707d9eac8ead3L


# instance fields
.field private transient greylist-max-o toStringCache:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 685
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-class v2, [C

    const-string v3, "value"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "count"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "shared"

    invoke-direct {v1, v3, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ljava/lang/StringBuffer;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 116
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 117
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .line 128
    invoke-direct {p0, p1}, Ljava/lang/AbstractStringBuilder;-><init>(I)V

    .line 129
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "seq"    # Ljava/lang/CharSequence;

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

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

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

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 711
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 712
    .local v0, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Ljava/lang/StringBuffer;->value:[C

    .line 713
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/lang/StringBuffer;->count:I

    .line 714
    return-void
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 698
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 699
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "value"

    iget-object v2, p0, Ljava/lang/StringBuffer;->value:[C

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    const-string v1, "count"

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 701
    const-string v1, "shared"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 702
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 703
    monitor-exit p0

    return-void

    .line 697
    .end local v0    # "fields":Ljava/io/ObjectOutputStream$PutField;
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic blacklist append(C)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(D)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(F)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(J)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method bridge synthetic blacklist append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append(Z)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append([C)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic blacklist append([CII)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public bridge synthetic whitelist core-platform-api test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "c"    # C

    monitor-enter p0

    .line 380
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 381
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 382
    monitor-exit p0

    return-object p0

    .line 379
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "c":C
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(D)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "d"    # D

    monitor-enter p0

    .line 418
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 419
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(D)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 420
    monitor-exit p0

    return-object p0

    .line 417
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "d":D
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(F)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "f"    # F

    monitor-enter p0

    .line 411
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 412
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(F)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 413
    monitor-exit p0

    return-object p0

    .line 410
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "f":F
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "i"    # I

    monitor-enter p0

    .line 387
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 388
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 389
    monitor-exit p0

    return-object p0

    .line 386
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "i":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(J)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "lng"    # J

    monitor-enter p0

    .line 404
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 405
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->append(J)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 406
    monitor-exit p0

    return-object p0

    .line 403
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "lng":J
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized greylist-max-o append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "asb"    # Ljava/lang/AbstractStringBuilder;

    monitor-enter p0

    .line 309
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 310
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/AbstractStringBuilder;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 311
    monitor-exit p0

    return-object p0

    .line 308
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "asb":Ljava/lang/AbstractStringBuilder;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    monitor-enter p0

    .line 337
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 338
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 339
    monitor-exit p0

    return-object p0

    .line 336
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "s":Ljava/lang/CharSequence;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    monitor-enter p0

    .line 349
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 350
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 351
    monitor-exit p0

    return-object p0

    .line 348
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "s":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

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

    .line 264
    monitor-exit p0

    return-object p0

    .line 261
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "obj":Ljava/lang/Object;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 269
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 270
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 271
    monitor-exit p0

    return-object p0

    .line 268
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    monitor-enter p0

    .line 299
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 300
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 301
    monitor-exit p0

    return-object p0

    .line 298
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "sb":Ljava/lang/StringBuffer;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append(Z)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "b"    # Z

    monitor-enter p0

    .line 373
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 374
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Z)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 375
    monitor-exit p0

    return-object p0

    .line 372
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "b":Z
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append([C)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "str"    # [C

    monitor-enter p0

    .line 356
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 357
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->append([C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 358
    monitor-exit p0

    return-object p0

    .line 355
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":[C
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api append([CII)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 366
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 367
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->append([CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 368
    monitor-exit p0

    return-object p0

    .line 365
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":[C
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api appendCodePoint(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "codePoint"    # I

    monitor-enter p0

    .line 397
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 398
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 399
    monitor-exit p0

    return-object p0

    .line 396
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "codePoint":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api capacity()I
    .registers 2

    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    .line 168
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 201
    if-ltz p1, :cond_d

    :try_start_3
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-ge p1, v0, :cond_d

    .line 203
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aget-char v0, v0, p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    monitor-exit p0

    return v0

    .line 202
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 200
    .end local p1    # "index":I
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 211
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointAt(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 211
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api codePointBefore(I)I
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 219
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->codePointBefore(I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 219
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->codePointCount(II)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 227
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "beginIndex":I
    .end local p2    # "endIndex":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist delete(II)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api delete(II)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 429
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 430
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->delete(II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 431
    monitor-exit p0

    return-object p0

    .line 428
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api deleteCharAt(I)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "index"    # I

    monitor-enter p0

    .line 440
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 441
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 442
    monitor-exit p0

    return-object p0

    .line 439
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api ensureCapacity(I)V
    .registers 2
    .param p1, "minimumCapacity"    # I

    monitor-enter p0

    .line 174
    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacity(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 175
    monitor-exit p0

    return-void

    .line 173
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "minimumCapacity":I
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api getChars(II[CI)V
    .registers 5
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    monitor-enter p0

    .line 245
    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->getChars(II[CI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "srcBegin":I
    .end local p2    # "srcEnd":I
    .end local p3    # "dst":[C
    .end local p4    # "dstBegin":I
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 628
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    monitor-enter p0

    .line 636
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 636
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    .end local p2    # "fromIndex":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist insert(IC)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ID)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(ID)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IF)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IF)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(II)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IJ)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->insert(IJ)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(IZ)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(IZ)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[C)Ljava/lang/AbstractStringBuilder;
    .registers 3

    .line 97
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .registers 5

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(IC)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "c"    # C

    monitor-enter p0

    .line 569
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 570
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IC)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 571
    monitor-exit p0

    return-object p0

    .line 568
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "c":C
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api insert(ID)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "d"    # D

    .line 618
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(ID)Ljava/lang/AbstractStringBuilder;

    .line 619
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(IF)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "f"    # F

    .line 606
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IF)Ljava/lang/AbstractStringBuilder;

    .line 607
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(II)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "i"    # I

    .line 582
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(II)Ljava/lang/AbstractStringBuilder;

    .line 583
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(IJ)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "l"    # J

    .line 594
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->insert(IJ)Ljava/lang/AbstractStringBuilder;

    .line 595
    return-object p0
.end method

.method public whitelist core-platform-api test-api insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .line 535
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;

    .line 536
    return-object p0
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    monitor-enter p0

    .line 547
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 548
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 549
    monitor-exit p0

    return-object p0

    .line 546
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "dstOffset":I
    .end local p2    # "s":Ljava/lang/CharSequence;
    .end local p3    # "start":I
    .end local p4    # "end":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(ILjava/lang/Object;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

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

    .line 503
    monitor-exit p0

    return-object p0

    .line 500
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "obj":Ljava/lang/Object;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(ILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 511
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 512
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 513
    monitor-exit p0

    return-object p0

    .line 510
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api insert(IZ)Ljava/lang/StringBuffer;
    .registers 3
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    .line 560
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(IZ)Ljava/lang/AbstractStringBuilder;

    .line 561
    return-object p0
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(I[C)Ljava/lang/StringBuffer;
    .registers 4
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    monitor-enter p0

    .line 521
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 522
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(I[C)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 523
    monitor-exit p0

    return-object p0

    .line 520
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "offset":I
    .end local p2    # "str":[C
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api insert(I[CII)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    monitor-enter p0

    .line 491
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/AbstractStringBuilder;->insert(I[CII)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 493
    monitor-exit p0

    return-object p0

    .line 490
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    .end local p2    # "str":[C
    .end local p3    # "offset":I
    .end local p4    # "len":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 645
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    monitor-enter p0

    .line 653
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 653
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "str":Ljava/lang/String;
    .end local p2    # "fromIndex":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api length()I
    .registers 2

    monitor-enter p0

    .line 163
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 163
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    monitor-enter p0

    .line 235
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->offsetByCodePoints(II)I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    .line 235
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "index":I
    .end local p2    # "codePointOffset":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .registers 4

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api replace(IILjava/lang/String;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    monitor-enter p0

    .line 451
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 452
    invoke-super {p0, p1, p2, p3}, Ljava/lang/AbstractStringBuilder;->replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 453
    monitor-exit p0

    return-object p0

    .line 450
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "str":Ljava/lang/String;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic blacklist reverse()Ljava/lang/AbstractStringBuilder;
    .registers 2

    .line 97
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api reverse()Ljava/lang/StringBuffer;
    .registers 2

    monitor-enter p0

    .line 661
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 662
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->reverse()Ljava/lang/AbstractStringBuilder;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 663
    monitor-exit p0

    return-object p0

    .line 660
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api setCharAt(IC)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "ch"    # C

    monitor-enter p0

    .line 254
    if-ltz p1, :cond_10

    :try_start_3
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    if-ge p1, v0, :cond_10

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 257
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    aput-char p2, v0, p1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 258
    monitor-exit p0

    return-void

    .line 255
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_16

    .line 253
    .end local p1    # "index":I
    .end local p2    # "ch":C
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api setLength(I)V
    .registers 3
    .param p1, "newLength"    # I

    monitor-enter p0

    .line 191
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 192
    invoke-super {p0, p1}, Ljava/lang/AbstractStringBuilder;->setLength(I)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 193
    monitor-exit p0

    return-void

    .line 190
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "newLength":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 471
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 471
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api substring(I)Ljava/lang/String;
    .registers 3
    .param p1, "start"    # I

    monitor-enter p0

    .line 462
    :try_start_1
    iget v0, p0, Ljava/lang/StringBuffer;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 462
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    monitor-enter p0

    .line 480
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 480
    .end local p0    # "this":Ljava/lang/StringBuffer;
    .end local p1    # "start":I
    .end local p2    # "end":I
    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 668
    :try_start_1
    iget-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 669
    iget-object v0, p0, Ljava/lang/StringBuffer;->value:[C

    iget v2, p0, Ljava/lang/StringBuffer;->count:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    .line 671
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :cond_10
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Ljava/lang/StringBuffer;->toStringCache:[C

    iget v3, p0, Ljava/lang/StringBuffer;->count:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 667
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api trimToSize()V
    .registers 2

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-super {p0}, Ljava/lang/AbstractStringBuilder;->trimToSize()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 183
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
