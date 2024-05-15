.class final Ljava/util/concurrent/locks/StampedLock$WNode;
.super Ljava/lang/Object;
.source "StampedLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WNode"
.end annotation


# instance fields
.field volatile greylist-max-o cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

.field final greylist-max-o mode:I

.field volatile greylist-max-o next:Ljava/util/concurrent/locks/StampedLock$WNode;

.field volatile greylist-max-o prev:Ljava/util/concurrent/locks/StampedLock$WNode;

.field volatile greylist-max-o status:I

.field volatile greylist-max-o thread:Ljava/lang/Thread;


# direct methods
.method constructor greylist-max-o <init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V
    .registers 3
    .param p1, "m"    # I
    .param p2, "p"    # Ljava/util/concurrent/locks/StampedLock$WNode;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    iput-object p2, p0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    return-void
.end method
