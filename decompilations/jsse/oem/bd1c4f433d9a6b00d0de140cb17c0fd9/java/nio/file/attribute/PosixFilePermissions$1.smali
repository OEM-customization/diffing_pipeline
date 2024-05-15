.class final Ljava/nio/file/attribute/PosixFilePermissions$1;
.super Ljava/lang/Object;
.source "PosixFilePermissions.java"

# interfaces
.implements Ljava/nio/file/attribute/FileAttribute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/file/attribute/PosixFilePermissions;->asFileAttribute(Ljava/util/Set;)Ljava/nio/file/attribute/FileAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/attribute/FileAttribute",
        "<",
        "Ljava/util/Set",
        "<",
        "Ljava/nio/file/attribute/PosixFilePermission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$value:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Ljava/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    const-string/jumbo v0, "posix:permissions"

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Ljava/nio/file/attribute/PosixFilePermissions$1;->value()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Ljava/nio/file/attribute/PosixFilePermissions$1;->val$value:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
