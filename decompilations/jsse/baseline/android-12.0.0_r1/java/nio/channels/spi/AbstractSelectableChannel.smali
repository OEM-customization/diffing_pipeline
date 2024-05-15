.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o blocking:Z

.field private greylist-max-o keyCount:I

.field private final greylist-max-o keyLock:Ljava/lang/Object;

.field private greylist-max-o keys:[Ljava/nio/channels/SelectionKey;

.field private final greylist-max-o provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final greylist-max-o regLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 50
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .line 79
    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    .line 80
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    .line 81
    return-void
.end method

.method private greylist-max-o addKey(Ljava/nio/channels/SelectionKey;)V
    .registers 7
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 96
    nop

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "i":I
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_19

    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    array-length v3, v1

    if-ge v2, v3, :cond_19

    .line 100
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v2, v1

    if-ge v0, v2, :cond_37

    .line 101
    aget-object v1, v1, v0

    if-nez v1, :cond_16

    .line 102
    goto :goto_37

    .line 100
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 103
    :cond_19
    if-nez v1, :cond_21

    .line 104
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/channels/SelectionKey;

    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    goto :goto_37

    .line 107
    :cond_21
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 108
    .local v1, "n":I
    new-array v2, v1, [Ljava/nio/channels/SelectionKey;

    .line 109
    .local v2, "ks":[Ljava/nio/channels/SelectionKey;
    const/4 v0, 0x0

    :goto_27
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v4, v3

    if-ge v0, v4, :cond_33

    .line 110
    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 111
    :cond_33
    iput-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    .line 112
    iget v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 114
    .end local v1    # "n":I
    .end local v2    # "ks":[Ljava/nio/channels/SelectionKey;
    :cond_37
    :goto_37
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aput-object p1, v1, v0

    .line 115
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 116
    return-void
.end method

.method private greylist-max-o findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 7
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .line 119
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 121
    monitor-exit v0

    return-object v2

    .line 122
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v4, v3

    if-ge v1, v4, :cond_25

    .line 123
    aget-object v4, v3, v1

    if-eqz v4, :cond_22

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v3

    if-ne v3, p1, :cond_22

    .line 124
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v2, v1

    monitor-exit v0

    return-object v2

    .line 122
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 125
    .end local v1    # "i":I
    :cond_25
    monitor-exit v0

    return-object v2

    .line 126
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private greylist-max-o haveValidKeys()Z
    .registers 6

    .line 141
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 143
    monitor-exit v0

    return v2

    .line 144
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v4, v3

    if-ge v1, v4, :cond_22

    .line 145
    aget-object v4, v3, v1

    if-eqz v4, :cond_1f

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 146
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 144
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 148
    .end local v1    # "i":I
    :cond_22
    monitor-exit v0

    return v2

    .line 149
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public final whitelist test-api blockingLock()Ljava/lang/Object;
    .registers 2

    .line 273
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 4
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 290
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    if-ne v1, p1, :cond_f

    .line 291
    monitor-exit v0

    return-object p0

    .line 292
    :cond_f
    if-eqz p1, :cond_1e

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->haveValidKeys()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1e

    .line 293
    :cond_18
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "block":Z
    throw v1

    .line 294
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "block":Z
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 295
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    .line 296
    monitor-exit v0

    .line 297
    return-object p0

    .line 289
    :cond_25
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "block":Z
    throw v1

    .line 296
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "block":Z
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected final whitelist test-api implCloseChannel()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 235
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_6
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    array-length v1, v1

    .line 237
    .local v1, "count":I
    :goto_d
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_1c

    .line 238
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v2

    .line 239
    .local v3, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v3, :cond_19

    .line 240
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 237
    .end local v3    # "k":Ljava/nio/channels/SelectionKey;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 242
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected abstract whitelist test-api implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract whitelist test-api implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist test-api isBlocking()Z
    .registers 3

    .line 267
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    monitor-exit v0

    return v1

    .line 269
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final whitelist test-api isRegistered()Z
    .registers 3

    .line 156
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 158
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public final whitelist test-api keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .line 162
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .line 89
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final whitelist test-api register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 8
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .param p3, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 198
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, p2

    if-nez v1, :cond_4a

    .line 200
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    if-nez v1, :cond_44

    .line 202
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 203
    .local v1, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v1, :cond_21

    .line 204
    invoke-virtual {v1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 205
    invoke-virtual {v1, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_21
    if-nez v1, :cond_42

    .line 209
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_56

    .line 210
    :try_start_26
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 212
    move-object v3, p1

    check-cast v3, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {v3, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    move-object v1, v3

    .line 213
    invoke-direct {p0, v1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->addKey(Ljava/nio/channels/SelectionKey;)V

    .line 214
    monitor-exit v2

    goto :goto_42

    .line 211
    :cond_39
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v3

    .line 214
    .restart local v1    # "k":Ljava/nio/channels/SelectionKey;
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :catchall_3f
    move-exception v3

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_3f

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    :try_start_41
    throw v3

    .line 216
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :cond_42
    :goto_42
    monitor-exit v0

    return-object v1

    .line 201
    .end local v1    # "k":Ljava/nio/channels/SelectionKey;
    :cond_44
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v1

    .line 199
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v1

    .line 197
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :cond_50
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .end local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    .end local p2    # "ops":I
    .end local p3    # "att":Ljava/lang/Object;
    throw v1

    .line 217
    .restart local p0    # "this":Ljava/nio/channels/spi/AbstractSelectableChannel;
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    .restart local p2    # "ops":I
    .restart local p3    # "att":Ljava/lang/Object;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_56

    throw v1
.end method

.method greylist-max-o removeKey(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .line 130
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v2

    if-ge v1, v3, :cond_19

    .line 132
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_16

    .line 133
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 134
    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 131
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 136
    .end local v1    # "i":I
    :cond_19
    move-object v1, p1

    check-cast v1, Ljava/nio/channels/spi/AbstractSelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractSelectionKey;->invalidate()V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method
