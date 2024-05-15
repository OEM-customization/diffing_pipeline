.class public abstract Lsun/nio/ch/AbstractPollArrayWrapper;
.super Ljava/lang/Object;
.source "AbstractPollArrayWrapper.java"


# static fields
.field static final EVENT_OFFSET:S = 0x4s

.field static final FD_OFFSET:S = 0x0s

.field static final REVENT_OFFSET:S = 0x6s

.field static final SIZE_POLLFD:S = 0x8s


# instance fields
.field protected pollArray:Lsun/nio/ch/AllocatedNativeObject;

.field protected pollArrayAddress:J

.field protected totalChannels:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->totalChannels:I

    .line 35
    return-void
.end method


# virtual methods
.method getDescriptor(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 64
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x0

    .line 65
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getInt(I)I

    move-result v1

    return v1
.end method

.method getEventOps(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 54
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x4

    .line 55
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    move-result v1

    return v1
.end method

.method getReventOps(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 59
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x6

    .line 60
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    move-result v1

    return v1
.end method

.method putDescriptor(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "fd"    # I

    .prologue
    .line 79
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x0

    .line 80
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2}, Lsun/nio/ch/AllocatedNativeObject;->putInt(II)V

    .line 81
    return-void
.end method

.method putEventOps(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "event"    # I

    .prologue
    .line 69
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x4

    .line 70
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    int-to-short v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    .line 71
    return-void
.end method

.method putReventOps(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "revent"    # I

    .prologue
    .line 74
    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v0, v1, 0x6

    .line 75
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    int-to-short v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    .line 76
    return-void
.end method
