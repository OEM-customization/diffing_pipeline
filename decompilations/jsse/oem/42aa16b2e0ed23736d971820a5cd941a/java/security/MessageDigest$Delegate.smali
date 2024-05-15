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
.field private greylist-max-o digestSpi:Ljava/security/MessageDigestSpi;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    .registers 3
    .param p1, "digestSpi"    # Ljava/security/MessageDigestSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 587
    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 588
    iput-object p1, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    .line 589
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 600
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    instance-of v1, v0, Ljava/lang/Cloneable;

    if-eqz v1, :cond_25

    .line 601
    nop

    .line 602
    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    .line 606
    .local v0, "digestSpiClone":Ljava/security/MessageDigestSpi;
    new-instance v1, Ljava/security/MessageDigest$Delegate;

    .line 608
    # getter for: Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;
    invoke-static {p0}, Ljava/security/MessageDigest;->access$000(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 609
    .local v1, "that":Ljava/security/MessageDigest;
    # getter for: Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    invoke-static {p0}, Ljava/security/MessageDigest;->access$100(Ljava/security/MessageDigest;)Ljava/security/Provider;

    move-result-object v2

    # setter for: Ljava/security/MessageDigest;->provider:Ljava/security/Provider;
    invoke-static {v1, v2}, Ljava/security/MessageDigest;->access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;

    .line 610
    # getter for: Ljava/security/MessageDigest;->state:I
    invoke-static {p0}, Ljava/security/MessageDigest;->access$200(Ljava/security/MessageDigest;)I

    move-result v2

    # setter for: Ljava/security/MessageDigest;->state:I
    invoke-static {v1, v2}, Ljava/security/MessageDigest;->access$202(Ljava/security/MessageDigest;I)I

    .line 611
    return-object v1

    .line 613
    .end local v0    # "digestSpiClone":Ljava/security/MessageDigestSpi;
    .end local v1    # "that":Ljava/security/MessageDigest;
    :cond_25
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected whitelist core-platform-api test-api engineDigest([BII)I
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 639
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api engineDigest()[B
    .registers 2

    .line 634
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist core-platform-api test-api engineGetDigestLength()I
    .registers 2

    .line 618
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api engineReset()V
    .registers 2

    .line 643
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 644
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 622
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    .line 623
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 630
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 631
    return-void
.end method

.method protected whitelist core-platform-api test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 626
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 627
    return-void
.end method
