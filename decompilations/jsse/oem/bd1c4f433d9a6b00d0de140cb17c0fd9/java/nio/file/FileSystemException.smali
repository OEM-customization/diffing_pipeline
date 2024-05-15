.class public Ljava/nio/file/FileSystemException;
.super Ljava/io/IOException;
.source "FileSystemException.java"


# static fields
.field static final serialVersionUID:J = -0x2a670d87892c9f04L


# instance fields
.field private final file:Ljava/lang/String;

.field private final other:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 54
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 111
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 114
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1b
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 116
    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_2a
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 120
    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Ljava/nio/file/FileSystemException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtherFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ljava/nio/file/FileSystemException;->other:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
