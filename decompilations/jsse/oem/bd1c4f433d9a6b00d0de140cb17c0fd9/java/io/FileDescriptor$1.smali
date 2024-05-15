.class final Ljava/io/FileDescriptor$1;
.super Ljava/lang/Object;
.source "FileDescriptor.java"

# interfaces
.implements Lsun/misc/JavaIOFileDescriptorAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Ljava/io/FileDescriptor;)I
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 190
    invoke-static {p1}, Ljava/io/FileDescriptor;->-get0(Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public getHandle(Ljava/io/FileDescriptor;)J
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/io/FileDescriptor;I)V
    .registers 3
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "fd"    # I

    .prologue
    .line 186
    invoke-static {p1, p2}, Ljava/io/FileDescriptor;->-set0(Ljava/io/FileDescriptor;I)I

    .line 187
    return-void
.end method

.method public setHandle(Ljava/io/FileDescriptor;J)V
    .registers 5
    .param p1, "obj"    # Ljava/io/FileDescriptor;
    .param p2, "handle"    # J

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
