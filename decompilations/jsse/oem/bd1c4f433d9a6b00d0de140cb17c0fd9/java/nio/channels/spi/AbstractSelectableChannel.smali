.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field blocking:Z

.field private keyCount:I

.field private final keyLock:Ljava/lang/Object;

.field private keys:[Ljava/nio/channels/SelectionKey;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final regLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/channels/spi/AbstractSelectableChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 3
    .param p1, "provider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
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

.method private addKey(Ljava/nio/channels/SelectionKey;)V
    .registers 7
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 96
    sget-boolean v3, Ljava/nio/channels/spi/AbstractSelectableChannel;->-assertionsDisabled:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 97
    :cond_12
    const/4 v0, 0x0

    .line 98
    .local v0, "i":I
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-eqz v3, :cond_38

    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v4, v4

    if-ge v3, v4, :cond_38

    .line 100
    const/4 v0, 0x0

    :goto_1f
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v0, v3, :cond_2a

    .line 101
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v0

    if-nez v3, :cond_35

    .line 114
    :cond_2a
    :goto_2a
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aput-object p1, v3, v0

    .line 115
    iget v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 116
    return-void

    .line 100
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 103
    :cond_38
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-nez v3, :cond_42

    .line 104
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/nio/channels/SelectionKey;

    iput-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    goto :goto_2a

    .line 107
    :cond_42
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x2

    .line 108
    .local v2, "n":I
    new-array v1, v2, [Ljava/nio/channels/SelectionKey;

    .line 109
    .local v1, "ks":[Ljava/nio/channels/SelectionKey;
    const/4 v0, 0x0

    :goto_4a
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v3, v3

    if-ge v0, v3, :cond_58

    .line 110
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 111
    :cond_58
    iput-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    .line 112
    iget v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    goto :goto_2a
.end method

.method private findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 6
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 120
    :try_start_4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2b

    if-nez v1, :cond_a

    monitor-exit v2

    .line 121
    return-object v3

    .line 122
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    :try_start_b
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 123
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v1

    if-ne v1, p1, :cond_26

    .line 124
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2b

    monitor-exit v2

    return-object v1

    .line 122
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    monitor-exit v2

    .line 125
    return-object v3

    .line 119
    .end local v0    # "i":I
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private haveValidKeys()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_4
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_28

    if-nez v1, :cond_a

    monitor-exit v2

    .line 143
    return v3

    .line 144
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    :try_start_b
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 145
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-eqz v1, :cond_23

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_28

    move-result v1

    if-eqz v1, :cond_23

    .line 146
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 144
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_26
    monitor-exit v2

    .line 148
    return v3

    .line 141
    .end local v0    # "i":I
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .registers 4
    .param p1, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    .line 289
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 287
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 290
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    if-ne v0, p1, :cond_18

    monitor-exit v1

    .line 291
    return-object p0

    .line 292
    :cond_18
    if-eqz p1, :cond_26

    :try_start_1a
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->haveValidKeys()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 293
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 294
    :cond_26
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    .line 295
    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_f

    monitor-exit v1

    .line 297
    return-object p0
.end method

.method protected final implCloseChannel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    .line 235
    iget-object v4, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 236
    :try_start_6
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    if-nez v3, :cond_1a

    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    :goto_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1e

    .line 238
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v3, v1

    .line 239
    .local v2, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v2, :cond_17

    .line 240
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 237
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 236
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "k":Ljava/nio/channels/SelectionKey;
    :cond_1a
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v0, v3
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_20

    .restart local v0    # "count":I
    goto :goto_b

    .restart local v1    # "i":I
    :cond_1e
    monitor-exit v4

    .line 243
    return-void

    .line 235
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_20
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 267
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final isRegistered()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_4
    iget v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    if-eqz v2, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit v1

    return v0

    .line 156
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "sel"    # Ljava/nio/channels/Selector;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .registers 8
    .param p1, "sel"    # Ljava/nio/channels/Selector;
    .param p2, "ops"    # I
    .param p3, "att"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->regLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_12

    .line 197
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 195
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1

    .line 198
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_20

    .line 199
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 200
    :cond_20
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blocking:Z

    if-eqz v1, :cond_2a

    .line 201
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 202
    :cond_2a
    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->findKey(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 203
    .local v0, "k":Ljava/nio/channels/SelectionKey;
    if-eqz v0, :cond_36

    .line 204
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 205
    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_36
    if-nez v0, :cond_54

    .line 209
    iget-object v3, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_f

    .line 210
    :try_start_3b
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 211
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_47

    .line 209
    .end local p1    # "sel":Ljava/nio/channels/Selector;
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v3

    throw v1
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_f

    .line 212
    .restart local p1    # "sel":Ljava/nio/channels/Selector;
    :cond_4a
    :try_start_4a
    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    .end local p1    # "sel":Ljava/nio/channels/Selector;
    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->addKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_47

    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_f

    :cond_54
    monitor-exit v2

    .line 216
    return-object v0
.end method

.method removeKey(Ljava/nio/channels/SelectionKey;)V
    .registers 6
    .param p1, "k"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 130
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 132
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1a

    .line 133
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keys:[Ljava/nio/channels/SelectionKey;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 134
    iget v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyCount:I

    .line 131
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 136
    :cond_1d
    check-cast p1, Ljava/nio/channels/spi/AbstractSelectionKey;

    .end local p1    # "k":Ljava/nio/channels/SelectionKey;
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractSelectionKey;->invalidate()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_24

    monitor-exit v2

    .line 138
    return-void

    .line 130
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method
