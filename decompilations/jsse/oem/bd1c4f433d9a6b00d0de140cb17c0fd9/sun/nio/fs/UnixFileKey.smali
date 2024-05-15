.class Lsun/nio/fs/UnixFileKey;
.super Ljava/lang/Object;
.source "UnixFileKey.java"


# instance fields
.field private final st_dev:J

.field private final st_ino:J


# direct methods
.method constructor <init>(JJ)V
    .registers 6
    .param p1, "st_dev"    # J
    .param p3, "st_ino"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    .line 38
    iput-wide p3, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-ne p1, p0, :cond_5

    .line 50
    return v1

    .line 51
    :cond_5
    instance-of v3, p1, Lsun/nio/fs/UnixFileKey;

    if-nez v3, :cond_a

    .line 52
    return v2

    :cond_a
    move-object v0, p1

    .line 53
    check-cast v0, Lsun/nio/fs/UnixFileKey;

    .line 54
    .local v0, "other":Lsun/nio/fs/UnixFileKey;
    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v6, v0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v6, v0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 43
    iget-wide v0, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 44
    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    iget-wide v4, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    .line 43
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "(dev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_dev:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string/jumbo v2, ",ino="

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    iget-wide v2, p0, Lsun/nio/fs/UnixFileKey;->st_ino:J

    .line 60
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const/16 v2, 0x29

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
