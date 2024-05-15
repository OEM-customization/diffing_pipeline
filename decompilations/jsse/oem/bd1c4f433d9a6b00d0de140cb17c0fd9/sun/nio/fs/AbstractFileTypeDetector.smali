.class public abstract Lsun/nio/fs/AbstractFileTypeDetector;
.super Ljava/nio/file/spi/FileTypeDetector;
.source "AbstractFileTypeDetector.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/nio/file/spi/FileTypeDetector;-><init>()V

    .line 42
    return-void
.end method

.method private static isTokenChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    .line 95
    const/16 v1, 0x20

    if-le p0, v1, :cond_13

    const/16 v1, 0x7f

    if-ge p0, v1, :cond_13

    const-string/jumbo v1, "()<>@,;:/[]?=\\\""

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private static isValidToken(Ljava/lang/String;)Z
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 103
    .local v1, "len":I
    if-nez v1, :cond_8

    .line 104
    return v3

    .line 105
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_19

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lsun/nio/fs/AbstractFileTypeDetector;->isTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_16

    .line 107
    return v3

    .line 105
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 109
    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method private static parse(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 68
    .local v2, "slash":I
    const/16 v5, 0x3b

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 69
    .local v1, "semicolon":I
    if-gez v2, :cond_11

    .line 70
    return-object v7

    .line 71
    :cond_11
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Lsun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 73
    return-object v7

    .line 74
    :cond_26
    if-gez v1, :cond_3f

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "subtype":Ljava/lang/String;
    :goto_2e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v3}, Lsun/nio/fs/AbstractFileTypeDetector;->isValidToken(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 78
    return-object v7

    .line 75
    .end local v3    # "subtype":Ljava/lang/String;
    :cond_3f
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "subtype":Ljava/lang/String;
    goto :goto_2e

    .line 79
    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected abstract implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final probeContentType(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    if-nez p1, :cond_c

    .line 51
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "\'file\' is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_c
    invoke-virtual {p0, p1}, Lsun/nio/fs/AbstractFileTypeDetector;->implProbeContentType(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_13

    :goto_12
    return-object v1

    :cond_13
    invoke-static {v0}, Lsun/nio/fs/AbstractFileTypeDetector;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method
