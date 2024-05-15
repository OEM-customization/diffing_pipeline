.class Ljava/security/MessageDigest$Delegate;
.super Ljava/security/MessageDigest;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Delegate"
.end annotation


# instance fields
.field private digestSpi:Ljava/security/MessageDigestSpi;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    .registers 3
    .param p1, "digestSpi"    # Ljava/security/MessageDigestSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 582
    iput-object p1, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    .line 583
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v2, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    instance-of v2, v2, Ljava/lang/Cloneable;

    if-eqz v2, :cond_26

    .line 596
    iget-object v2, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v2}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    .line 601
    .local v0, "digestSpiClone":Ljava/security/MessageDigestSpi;
    new-instance v1, Ljava/security/MessageDigest$Delegate;

    .line 602
    invoke-static {p0}, Ljava/security/MessageDigest;->-get0(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-direct {v1, v0, v2}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 603
    .local v1, "that":Ljava/security/MessageDigest;
    invoke-static {p0}, Ljava/security/MessageDigest;->-get1(Ljava/security/MessageDigest;)Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-set0(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;

    .line 604
    invoke-static {p0}, Ljava/security/MessageDigest;->-get2(Ljava/security/MessageDigest;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-set1(Ljava/security/MessageDigest;I)I

    .line 605
    return-object v1

    .line 607
    .end local v0    # "digestSpiClone":Ljava/security/MessageDigestSpi;
    .end local v1    # "that":Ljava/security/MessageDigest;
    :cond_26
    new-instance v2, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v2}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v2
.end method

.method protected engineDigest([BII)I
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method protected engineDigest()[B
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 638
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .prologue
    .line 616
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    .line 617
    return-void
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 624
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 625
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 620
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 621
    return-void
.end method
