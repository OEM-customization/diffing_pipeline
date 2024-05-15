.class Lsun/nio/fs/UnixMountEntry;
.super Ljava/lang/Object;
.source "UnixMountEntry.java"


# instance fields
.field private dev:J

.field private dir:[B

.field private fstype:[B

.field private volatile fstypeAsString:Ljava/lang/String;

.field private name:[B

.field private volatile optionsAsString:Ljava/lang/String;

.field private opts:[B


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method dev()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lsun/nio/fs/UnixMountEntry;->dev:J

    return-wide v0
.end method

.method dir()[B
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->dir:[B

    return-object v0
.end method

.method fstype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 51
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstype:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    .line 52
    :cond_c
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->fstypeAsString:Ljava/lang/String;

    return-object v0
.end method

.method hasOption(Ljava/lang/String;)Z
    .registers 8
    .param p1, "requested"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 68
    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->opts:[B

    invoke-static {v1}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    .line 69
    :cond_d
    iget-object v1, p0, Lsun/nio/fs/UnixMountEntry;->optionsAsString:Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-static {v1, v3}, Lsun/nio/fs/Util;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_17
    if-ge v1, v4, :cond_26

    aget-object v0, v3, v1

    .line 70
    .local v0, "opt":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 71
    const/4 v1, 0x1

    return v1

    .line 69
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 73
    .end local v0    # "opt":Ljava/lang/String;
    :cond_26
    return v2
.end method

.method isIgnored()Z
    .registers 2

    .prologue
    .line 78
    const-string/jumbo v0, "ignore"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isReadOnly()Z
    .registers 2

    .prologue
    .line 83
    const-string/jumbo v0, "ro"

    invoke-virtual {p0, v0}, Lsun/nio/fs/UnixMountEntry;->hasOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lsun/nio/fs/UnixMountEntry;->name:[B

    invoke-static {v0}, Lsun/nio/fs/Util;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
