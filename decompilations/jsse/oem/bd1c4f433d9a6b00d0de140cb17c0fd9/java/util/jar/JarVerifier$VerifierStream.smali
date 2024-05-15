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
.field private is:Ljava/io/InputStream;

.field private jv:Ljava/util/jar/JarVerifier;

.field private mev:Lsun/security/util/ManifestEntryVerifier;

.field private numLeft:J


# direct methods
.method constructor <init>(Ljava/util/jar/Manifest;Ljava/util/jar/JarEntry;Ljava/io/InputStream;Ljava/util/jar/JarVerifier;)V
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

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 452
    if-nez p3, :cond_e

    .line 453
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_e
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 456
    iput-object p4, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 457
    new-instance v0, Lsun/security/util/ManifestEntryVerifier;

    invoke-direct {v0, p1}, Lsun/security/util/ManifestEntryVerifier;-><init>(Ljava/util/jar/Manifest;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 458
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v0, p2, v1}, Ljava/util/jar/JarVerifier;->beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V

    .line 459
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 460
    iget-wide v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 461
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 462
    :cond_36
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_d

    .line 518
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_d
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 509
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 510
    :cond_a
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    .line 511
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    .line 512
    iput-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    .line 513
    return-void
.end method

.method public read()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 467
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v1, :cond_10

    .line 468
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :cond_10
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_38

    .line 472
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 473
    .local v0, "b":I
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v0, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 474
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 475
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_37

    .line 476
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    invoke-virtual {v1, v6, v2}, Ljava/util/jar/JarVerifier;->update(ILsun/security/util/ManifestEntryVerifier;)V

    .line 477
    :cond_37
    return v0

    .line 479
    .end local v0    # "b":I
    :cond_38
    return v6
.end method

.method public read([BII)I
    .registers 13
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 485
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    if-nez v0, :cond_10

    .line 486
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_10
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_20

    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v4, p3

    cmp-long v0, v2, v4

    if-gez v0, :cond_20

    .line 490
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    long-to-int p3, v2

    .line 493
    :cond_20
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_4e

    .line 494
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 495
    .local v1, "n":I
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v5, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 496
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    .line 497
    iget-wide v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->numLeft:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_4d

    .line 498
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierStream;->jv:Ljava/util/jar/JarVerifier;

    iget-object v7, p0, Ljava/util/jar/JarVerifier$VerifierStream;->mev:Lsun/security/util/ManifestEntryVerifier;

    move v3, v8

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/jar/JarVerifier;->update(I[BIILsun/security/util/ManifestEntryVerifier;)V

    .line 499
    :cond_4d
    return v1

    .line 501
    .end local v1    # "n":I
    :cond_4e
    return v8
.end method
