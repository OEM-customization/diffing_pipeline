.class final Ljava/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final greylist-max-o deadline:J

.field final greylist-max-o interruptible:Z

.field greylist-max-o nanos:J

.field greylist-max-o next:Ljava/util/concurrent/Phaser$QNode;

.field final greylist-max-o phase:I

.field final greylist-max-o phaser:Ljava/util/concurrent/Phaser;

.field volatile greylist-max-o thread:Ljava/lang/Thread;

.field final greylist-max-o timed:Z

.field greylist-max-o wasInterrupted:Z


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/Phaser;IZZJ)V
    .registers 9
    .param p1, "phaser"    # Ljava/util/concurrent/Phaser;
    .param p2, "phase"    # I
    .param p3, "interruptible"    # Z
    .param p4, "timed"    # Z
    .param p5, "nanos"    # J

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1097
    iput-object p1, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    .line 1098
    iput p2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    .line 1099
    iput-boolean p3, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    .line 1100
    iput-wide p5, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    .line 1101
    iput-boolean p4, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    .line 1102
    if-eqz p4, :cond_15

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p5

    goto :goto_17

    :cond_15
    const-wide/16 v0, 0x0

    :goto_17
    iput-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    .line 1103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1104
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api block()Z
    .registers 3

    .line 1128
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1129
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_10

    .line 1130
    iget-wide v0, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1132
    :cond_10
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    .line 1134
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api isReleasable()Z
    .registers 11

    .line 1107
    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1108
    return v1

    .line 1109
    :cond_6
    iget-object v0, p0, Ljava/util/concurrent/Phaser$QNode;->phaser:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    iget v2, p0, Ljava/util/concurrent/Phaser$QNode;->phase:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 1110
    iput-object v3, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1111
    return v1

    .line 1113
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1114
    iput-boolean v1, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .line 1115
    :cond_1c
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-eqz v0, :cond_27

    .line 1116
    iput-object v3, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1117
    return v1

    .line 1119
    :cond_27
    iget-boolean v0, p0, Ljava/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_43

    iget-wide v4, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_40

    iget-wide v4, p0, Ljava/util/concurrent/Phaser$QNode;->deadline:J

    .line 1120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, p0, Ljava/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_43

    .line 1121
    :cond_40
    iput-object v3, p0, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1122
    return v1

    .line 1124
    :cond_43
    const/4 v0, 0x0

    return v0
.end method