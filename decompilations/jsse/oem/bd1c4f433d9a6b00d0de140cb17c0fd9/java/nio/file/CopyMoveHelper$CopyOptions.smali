.class Ljava/nio/file/CopyMoveHelper$CopyOptions;
.super Ljava/lang/Object;
.source "CopyMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/CopyMoveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyOptions"
.end annotation


# instance fields
.field copyAttributes:Z

.field followLinks:Z

.field replaceExisting:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 45
    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    .line 48
    return-void
.end method

.method static varargs parse([Ljava/nio/file/CopyOption;)Ljava/nio/file/CopyMoveHelper$CopyOptions;
    .registers 8
    .param p0, "options"    # [Ljava/nio/file/CopyOption;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 51
    new-instance v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;

    invoke-direct {v1}, Ljava/nio/file/CopyMoveHelper$CopyOptions;-><init>()V

    .line 52
    .local v1, "result":Ljava/nio/file/CopyMoveHelper$CopyOptions;
    array-length v4, p0

    move v2, v3

    :goto_9
    if-ge v2, v4, :cond_4d

    aget-object v0, p0, v2

    .line 53
    .local v0, "option":Ljava/nio/file/CopyOption;
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    if-ne v0, v5, :cond_16

    .line 54
    iput-boolean v6, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->replaceExisting:Z

    .line 52
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 57
    :cond_16
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v0, v5, :cond_1d

    .line 58
    iput-boolean v3, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->followLinks:Z

    goto :goto_13

    .line 61
    :cond_1d
    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    if-ne v0, v5, :cond_24

    .line 62
    iput-boolean v6, v1, Ljava/nio/file/CopyMoveHelper$CopyOptions;->copyAttributes:Z

    goto :goto_13

    .line 65
    :cond_24
    if-nez v0, :cond_2c

    .line 66
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 67
    :cond_2c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    const-string/jumbo v4, "\' is not a recognized copy option"

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0    # "option":Ljava/nio/file/CopyOption;
    :cond_4d
    return-object v1
.end method
