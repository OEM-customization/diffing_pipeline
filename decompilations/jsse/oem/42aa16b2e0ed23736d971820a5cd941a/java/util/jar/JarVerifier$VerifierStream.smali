.class Ljava/util/jar/JarVerifier$VerifierStream;
.super Ljava/io/InputStream;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierStream"
.end annotation


# instance fields
.field private greylist-max-o is:Ljava/io/InputStream;

.field private greylist-max-o jv:Ljava/util/jar/JarVerifier;

.field private greylist-max-o mev:Lsun/security/util/ManifestEntryVerifier;

.field private greylist-max-o numLeft:J


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
    .registers 9
    .param p1, "man"    # Ljava/util/jar/Manifest;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "jv"    # Ljava/util/jar/JarVerifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 455
    if-eqz p3, :cond_2a

    .line 459
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 460
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 461
    new-instance v0, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct {v0, p1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 462
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    invoke-virtual {v1, p2, v0}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 463
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 464
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 465
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    const/4 v1, -0x1

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 466
    :cond_29
    return-void

    .line 456
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 525
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 522
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 513
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 514
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 515
    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 516
    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 517
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_2c

    .line 475
    iget-wide v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-lez v1, :cond_2b

    .line 476
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 477
    .local v0, "b":I
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v0, v5}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 478
    iget-wide v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 479
    cmp-long v1, v5, v3

    if-nez v1, :cond_2a

    .line 480
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v2, v3}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 481
    :cond_2a
    return v0

    .line 483
    .end local v0    # "b":I
    :cond_2b
    return v2

    .line 472
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_41

    .line 493
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_12

    int-to-long v4, p3

    cmp-long v4, v0, v4

    if-gez v4, :cond_12

    .line 494
    long-to-int p3, v0

    .line 497
    :cond_12
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3f

    .line 498
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 499
    .local v0, "n":I
    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v9, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move v5, v0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 500
    iget-wide v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 501
    cmp-long v1, v4, v2

    if-nez v1, :cond_3e

    .line 502
    iget-object v4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    const/4 v5, -0x1

    iget-object v9, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 503
    :cond_3e
    return v0

    .line 505
    .end local v0    # "n":I
    :cond_3f
    const/4 v0, -0x1

    return v0

    .line 490
    :cond_41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
