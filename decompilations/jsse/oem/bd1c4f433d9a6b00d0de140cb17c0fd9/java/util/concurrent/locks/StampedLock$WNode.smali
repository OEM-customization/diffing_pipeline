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
.field volatile cowait:Ljava/util/concurrent/locks/StampedLock$WNode;

.field final mode:I

.field volatile next:Ljava/util/concurrent/locks/StampedLock$WNode;

.field volatile prev:Ljava/util/concurrent/locks/StampedLock$WNode;

.field volatile status:I

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(ILjava/util/concurrent/locks/StampedLock$WNode;)V
    .registers 3
    .param p1, "m"    # I
    .param p2, "p"    # Ljava/util/concurrent/locks/StampedLock$WNode;

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/util/concurrent/locks/StampedLock$WNode;->mode:I

    iput-object p2, p0, Ljava/util/concurrent/locks/StampedLock$WNode;->prev:Ljava/util/concurrent/locks/StampedLock$WNode;

    return-void
.end method
