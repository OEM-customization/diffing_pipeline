.class public Lsun/nio/ch/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field final channel:Lsun/nio/ch/SelChImpl;

.field private index:I

.field private volatile interestOps:I

.field private readyOps:I

.field public final selector:Lsun/nio/ch/SelectorImpl;


# direct methods
.method constructor <init>(Lsun/nio/ch/SelChImpl;Lsun/nio/ch/SelectorImpl;)V
    .registers 3
    .param p1, "ch"    # Lsun/nio/ch/SelChImpl;
    .param p2, "sel"    # Lsun/nio/ch/SelectorImpl;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    .line 50
    iput-object p1, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    .line 51
    iput-object p2, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    .line 52
    return-void
.end method

.method private ensureValid()V
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_c

    .line 72
    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0

    .line 73
    :cond_c
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method getIndex()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    return v0
.end method

.method public interestOps()I
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 77
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "ops"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 82
    invoke-virtual {p0, p1}, Lsun/nio/ch/SelectionKeyImpl;->nioInterestOps(I)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public nioInterestOps()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    return v0
.end method

.method public nioInterestOps(I)Ljava/nio/channels/SelectionKey;
    .registers 3
    .param p1, "ops"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lsun/nio/ch/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 104
    :cond_12
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->channel:Lsun/nio/ch/SelChImpl;

    invoke-interface {v0, p1, p0}, Lsun/nio/ch/SelChImpl;->translateAndSetInterestOps(ILsun/nio/ch/SelectionKeyImpl;)V

    .line 105
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->interestOps:I

    .line 106
    return-object p0
.end method

.method public nioReadyOps()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public nioReadyOps(I)V
    .registers 2
    .param p1, "ops"    # I

    .prologue
    .line 94
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    .line 95
    return-void
.end method

.method public readyOps()I
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lsun/nio/ch/SelectionKeyImpl;->ensureValid()V

    .line 87
    iget v0, p0, Lsun/nio/ch/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lsun/nio/ch/SelectionKeyImpl;->selector:Lsun/nio/ch/SelectorImpl;

    return-object v0
.end method

.method setIndex(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 67
    iput p1, p0, Lsun/nio/ch/SelectionKeyImpl;->index:I

    .line 68
    return-void
.end method
