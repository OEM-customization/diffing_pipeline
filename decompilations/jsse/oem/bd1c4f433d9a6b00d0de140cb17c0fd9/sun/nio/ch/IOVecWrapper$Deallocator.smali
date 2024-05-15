.class Lsun/nio/ch/IOVecWrapper$Deallocator;
.super Ljava/lang/Object;
.source "IOVecWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/IOVecWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deallocator"
.end annotation


# instance fields
.field private final obj:Lsun/nio/ch/AllocatedNativeObject;


# direct methods
.method constructor <init>(Lsun/nio/ch/AllocatedNativeObject;)V
    .registers 2
    .param p1, "obj"    # Lsun/nio/ch/AllocatedNativeObject;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lsun/nio/ch/IOVecWrapper$Deallocator;->obj:Lsun/nio/ch/AllocatedNativeObject;

    .line 75
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lsun/nio/ch/IOVecWrapper$Deallocator;->obj:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    .line 78
    return-void
.end method
