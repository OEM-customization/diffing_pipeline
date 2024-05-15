.class public Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;
.source "PKIXNameConstraintValidator.java"


# instance fields
.field private excludedSubtreesDN:Ljava/util/Set;

.field private excludedSubtreesDNS:Ljava/util/Set;

.field private excludedSubtreesEmail:Ljava/util/Set;

.field private excludedSubtreesIP:Ljava/util/Set;

.field private excludedSubtreesURI:Ljava/util/Set;

.field private permittedSubtreesDN:Ljava/util/Set;

.field private permittedSubtreesDNS:Ljava/util/Set;

.field private permittedSubtreesEmail:Ljava/util/Set;

.field private permittedSubtreesIP:Ljava/util/Set;

.field private permittedSubtreesURI:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 44
    return-void
.end method

.method private checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 116
    return-void

    .line 119
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 125
    .local v1, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 127
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 128
    const-string/jumbo v3, "Subject distinguished name is from an excluded subtree"

    .line 127
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    .end local v1    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_26
    return-void
.end method

.method private checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 731
    return-void

    .line 734
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 736
    .local v0, "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 738
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 741
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 743
    :cond_23
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 744
    const-string/jumbo v3, "DNS is from an excluded subtree."

    .line 743
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    .end local v1    # "str":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method private checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 513
    return-void

    .line 516
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 518
    .local v0, "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 520
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 522
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 524
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 525
    const-string/jumbo v3, "Email address is from an excluded subtree."

    .line 524
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    .end local v1    # "str":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private checkExcludedIP(Ljava/util/Set;[B)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 582
    return-void

    .line 585
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 587
    .local v1, "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 589
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 591
    .local v0, "ipWithSubnet":[B
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 593
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 594
    const-string/jumbo v3, "IP is from an excluded subtree."

    .line 593
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 597
    .end local v0    # "ipWithSubnet":[B
    :cond_26
    return-void
.end method

.method private checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1216
    return-void

    .line 1219
    :cond_7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1221
    .local v0, "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1225
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1227
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 1228
    const-string/jumbo v3, "URI is from an excluded subtree."

    .line 1227
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1231
    .end local v1    # "str":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_3

    .line 88
    return-void

    .line 91
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 93
    return-void

    .line 95
    :cond_10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    .local v0, "it":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 101
    .local v1, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 103
    return-void

    .line 107
    .end local v1    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_27
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 108
    const-string/jumbo v3, "Subject distinguished name is not from a permitted subtree"

    .line 107
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 701
    if-nez p1, :cond_3

    .line 703
    return-void

    .line 706
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 708
    .local v0, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 710
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 715
    :cond_1f
    return-void

    .line 718
    .end local v1    # "str":Ljava/lang/String;
    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2d

    .line 720
    return-void

    .line 722
    :cond_2d
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 723
    const-string/jumbo v3, "DNS is not from a permitted subtree."

    .line 722
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 482
    if-nez p1, :cond_3

    .line 484
    return-void

    .line 487
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 489
    .local v0, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 491
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 495
    return-void

    .line 499
    .end local v1    # "str":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_27

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_27

    .line 501
    return-void

    .line 504
    :cond_27
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 505
    const-string/jumbo v3, "Subject email address is not from a permitted subtree."

    .line 504
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkPermittedIP(Ljava/util/Set;[B)V
    .registers 7
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ip"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 543
    if-nez p1, :cond_3

    .line 545
    return-void

    .line 548
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 550
    .local v1, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 554
    .local v0, "ipWithSubnet":[B
    invoke-direct {p0, p2, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->isIPConstrained([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 556
    return-void

    .line 559
    .end local v0    # "ipWithSubnet":[B
    :cond_1a
    array-length v2, p2

    if-nez v2, :cond_24

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_24

    .line 561
    return-void

    .line 563
    :cond_24
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 564
    const-string/jumbo v3, "IP is not from a permitted subtree."

    .line 563
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 1384
    if-nez p1, :cond_3

    .line 1386
    return-void

    .line 1389
    :cond_3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1391
    .local v0, "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1395
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1397
    return-void

    .line 1400
    .end local v1    # "str":Ljava/lang/String;
    :cond_1a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_27

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_27

    .line 1402
    return-void

    .line 1404
    :cond_27
    new-instance v2, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    .line 1405
    const-string/jumbo v3, "URI is not from a permitted subtree."

    .line 1404
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 12
    .param p1, "coll1"    # Ljava/util/Collection;
    .param p2, "coll2"    # Ljava/util/Collection;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1779
    if-ne p1, p2, :cond_5

    .line 1781
    return v8

    .line 1783
    :cond_5
    if-eqz p1, :cond_9

    if-nez p2, :cond_a

    .line 1785
    :cond_9
    return v7

    .line 1787
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    if-eq v5, v6, :cond_15

    .line 1789
    return v7

    .line 1791
    :cond_15
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1793
    .local v3, "it1":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1795
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1796
    .local v0, "a":Ljava/lang/Object;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1797
    .local v4, "it2":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 1798
    .local v2, "found":Z
    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1800
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1801
    .local v1, "b":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1803
    const/4 v2, 0x1

    .line 1807
    .end local v1    # "b":Ljava/lang/Object;
    :cond_39
    if-nez v2, :cond_19

    .line 1809
    return v7

    .line 1812
    .end local v0    # "a":Ljava/lang/Object;
    .end local v2    # "found":Z
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_3c
    return v8
.end method

.method private static compareTo([B[B)I
    .registers 3
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .prologue
    .line 1692
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1694
    const/4 v0, 0x0

    return v0

    .line 1696
    :cond_8
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1698
    const/4 v0, 0x1

    return v0

    .line 1700
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private emailIsConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 637
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "sub":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_27

    .line 641
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 643
    return v2

    .line 645
    :cond_1c
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 647
    return v2

    .line 651
    :cond_27
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_39

    move v1, v2

    :goto_30
    if-nez v1, :cond_3b

    .line 653
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 655
    return v2

    :cond_39
    move v1, v3

    .line 651
    goto :goto_30

    .line 659
    :cond_3b
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 661
    return v2

    .line 663
    :cond_42
    return v3
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1817
    if-ne p1, p2, :cond_4

    .line 1819
    const/4 v0, 0x1

    return v0

    .line 1821
    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 1823
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 1825
    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_1b

    instance-of v0, p2, [B

    if-eqz v0, :cond_1b

    .line 1827
    check-cast p1, [B

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, [B

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0

    .line 1831
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2f

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x3a

    .line 1433
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, "sub":Ljava/lang/String;
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_26

    .line 1437
    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_34

    .line 1442
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1445
    :cond_34
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1446
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1448
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_58

    .line 1450
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1452
    :cond_58
    return-object v0
.end method

.method private extractIPsAndSubnetMasks([B[B)[[B
    .registers 10
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .prologue
    const/4 v6, 0x0

    .line 427
    array-length v5, p1

    div-int/lit8 v2, v5, 0x2

    .line 428
    .local v2, "ipLength":I
    new-array v0, v2, [B

    .line 429
    .local v0, "ip1":[B
    new-array v3, v2, [B

    .line 430
    .local v3, "subnetmask1":[B
    invoke-static {p1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 431
    invoke-static {p1, v2, v3, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 433
    new-array v1, v2, [B

    .line 434
    .local v1, "ip2":[B
    new-array v4, v2, [B

    .line 435
    .local v4, "subnetmask2":[B
    invoke-static {p2, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 436
    invoke-static {p2, v2, v4, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 438
    const/4 v5, 0x4

    new-array v5, v5, [[B

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    .line 437
    return-object v5
.end method

.method private extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    .prologue
    .line 1585
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hashCollection(Ljava/util/Collection;)I
    .registers 6
    .param p1, "coll"    # Ljava/util/Collection;

    .prologue
    .line 1737
    if-nez p1, :cond_4

    .line 1739
    const/4 v3, 0x0

    return v3

    .line 1741
    :cond_4
    const/4 v0, 0x0

    .line 1742
    .local v0, "hash":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1743
    .local v1, "it1":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1745
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1746
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, [B

    if-eqz v3, :cond_1f

    .line 1748
    check-cast v2, [B

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_9

    .line 1752
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_9

    .line 1755
    .end local v2    # "o":Ljava/lang/Object;
    :cond_25
    return v0
.end method

.method private intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/util/Set;

    .prologue
    .line 135
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 140
    .local v1, "dn":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    if-nez p1, :cond_2d

    .line 142
    if-eqz v1, :cond_9

    .line 144
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 149
    :cond_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "_iter":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 154
    .local v4, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 156
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 158
    :cond_47
    invoke-static {v4, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 160
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 165
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "dn":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_51
    return-object v2
.end method

.method private intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "dnss"    # Ljava/util/Set;

    .prologue
    .line 1036
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1037
    .local v3, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1039
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    .local v2, "dns":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 1043
    if-eqz v2, :cond_9

    .line 1045
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1050
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1051
    .local v0, "_iter":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1053
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1055
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1057
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1059
    :cond_3f
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1061
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 1067
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "_permitted":Ljava/lang/String;
    .end local v2    # "dns":Ljava/lang/String;
    :cond_49
    return-object v3
.end method

.method private intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "emails"    # Ljava/util/Set;

    .prologue
    .line 210
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "email":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 218
    if-eqz v1, :cond_9

    .line 220
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 225
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 226
    .local v4, "it2":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 228
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v0, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_29

    .line 234
    .end local v0    # "_permitted":Ljava/lang/String;
    .end local v1    # "email":Ljava/lang/String;
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_39
    return-object v2
.end method

.method private intersectEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x40

    .line 1121
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_40

    .line 1123
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_23

    .line 1127
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1129
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_22
    :goto_22
    return-void

    .line 1133
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1135
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1137
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1143
    :cond_36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1145
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1150
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_40
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1152
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_63

    .line 1154
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1157
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1161
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_63
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1163
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1164
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1163
    if-eqz v1, :cond_7c

    .line 1166
    :cond_78
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1168
    :cond_7c
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1170
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1175
    :cond_86
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1177
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1184
    :cond_90
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_ab

    .line 1186
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1189
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1193
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_ab
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1195
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1197
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1203
    :cond_bf
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1205
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22
.end method

.method private intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "ips"    # Ljava/util/Set;

    .prologue
    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v1, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 279
    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 281
    .local v2, "ip":[B
    if-nez p1, :cond_2d

    .line 283
    if-eqz v2, :cond_9

    .line 285
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 290
    :cond_2d
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 291
    .local v4, "it2":Ljava/util/Iterator;
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 293
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 294
    .local v0, "_permitted":[B
    invoke-direct {p0, v0, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectIPRange([B[B)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    .line 298
    .end local v0    # "_permitted":[B
    .end local v2    # "ip":[B
    .end local v4    # "it2":Ljava/util/Iterator;
    :cond_45
    return-object v1
.end method

.method private intersectIPRange([B[B)Ljava/util/Set;
    .registers 15
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .prologue
    .line 372
    array-length v10, p1

    array-length v11, p2

    if-eq v10, v11, :cond_7

    .line 374
    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v10

    .line 376
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractIPsAndSubnetMasks([B[B)[[B

    move-result-object v9

    .line 377
    .local v9, "temp":[[B
    const/4 v10, 0x0

    aget-object v1, v9, v10

    .line 378
    .local v1, "ip1":[B
    const/4 v10, 0x1

    aget-object v7, v9, v10

    .line 379
    .local v7, "subnetmask1":[B
    const/4 v10, 0x2

    aget-object v2, v9, v10

    .line 380
    .local v2, "ip2":[B
    const/4 v10, 0x3

    aget-object v8, v9, v10

    .line 382
    .local v8, "subnetmask2":[B
    invoke-direct {p0, v1, v7, v2, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->minMaxIPs([B[B[B[B)[[B

    move-result-object v5

    .line 385
    .local v5, "minMax":[[B
    const/4 v10, 0x1

    aget-object v10, v5, v10

    const/4 v11, 0x3

    aget-object v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->min([B[B)[B

    move-result-object v3

    .line 386
    .local v3, "max":[B
    const/4 v10, 0x0

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->max([B[B)[B

    move-result-object v4

    .line 389
    .local v4, "min":[B
    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->compareTo([B[B)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_39

    .line 391
    sget-object v10, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v10

    .line 394
    :cond_39
    const/4 v10, 0x0

    aget-object v10, v5, v10

    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-static {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object v0

    .line 395
    .local v0, "ip":[B
    invoke-static {v7, v8}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->or([B[B)[B

    move-result-object v6

    .line 396
    .local v6, "subnetmask":[B
    invoke-direct {p0, v0, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->ipWithSubnetMask([B[B)[B

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    return-object v10
.end method

.method private intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 9
    .param p1, "permitted"    # Ljava/util/Set;
    .param p2, "uris"    # Ljava/util/Set;

    .prologue
    .line 1235
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1236
    .local v2, "intersect":Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v4

    .line 1240
    .local v4, "uri":Ljava/lang/String;
    if-nez p1, :cond_25

    .line 1242
    if-eqz v4, :cond_9

    .line 1244
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1249
    :cond_25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1250
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1253
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, v4, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_29

    .line 1257
    .end local v0    # "_iter":Ljava/util/Iterator;
    .end local v1    # "_permitted":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_39
    return-object v2
.end method

.method private intersectURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "intersect"    # Ljava/util/Set;

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x40

    .line 1291
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_40

    .line 1293
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_23

    .line 1297
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1299
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1379
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_22
    :goto_22
    return-void

    .line 1303
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_23
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1305
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1307
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1313
    :cond_36
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1315
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1320
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_40
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1322
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_63

    .line 1324
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1325
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1327
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1331
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_63
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1333
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_78

    .line 1334
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1333
    if-eqz v1, :cond_7c

    .line 1336
    :cond_78
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1338
    :cond_7c
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1340
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1345
    :cond_86
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1347
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1354
    :cond_90
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_ab

    .line 1356
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1357
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1359
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1363
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_ab
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 1365
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1367
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1373
    :cond_bf
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1375
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22
.end method

.method private ipWithSubnetMask([B[B)[B
    .registers 7
    .param p1, "ip"    # [B
    .param p2, "subnetMask"    # [B

    .prologue
    const/4 v3, 0x0

    .line 408
    array-length v0, p1

    .line 409
    .local v0, "ipLength":I
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [B

    .line 410
    .local v1, "temp":[B
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 411
    invoke-static {p2, v3, v1, v0, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 412
    return-object v1
.end method

.method private isIPConstrained([B[B)Z
    .registers 10
    .param p1, "ip"    # [B
    .param p2, "constraint"    # [B

    .prologue
    const/4 v6, 0x0

    .line 611
    array-length v1, p1

    .line 613
    .local v1, "ipLength":I
    array-length v5, p2

    div-int/lit8 v5, v5, 0x2

    if-eq v1, v5, :cond_8

    .line 615
    return v6

    .line 618
    :cond_8
    new-array v4, v1, [B

    .line 619
    .local v4, "subnetMask":[B
    invoke-static {p2, v1, v4, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 621
    new-array v3, v1, [B

    .line 623
    .local v3, "permittedSubnetAddress":[B
    new-array v2, v1, [B

    .line 626
    .local v2, "ipSubnetAddress":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_27

    .line 628
    aget-byte v5, p2, v0

    aget-byte v6, v4, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    .line 629
    aget-byte v5, p1, v0

    aget-byte v6, v4, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 632
    :cond_27
    invoke-static {v3, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v5

    return v5
.end method

.method private isUriConstrained(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1410
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1414
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1416
    return v2

    .line 1421
    :cond_15
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1423
    return v2

    .line 1426
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private static max([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .prologue
    const v3, 0xffff

    .line 1652
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1654
    aget-byte v1, p0, v0

    and-int/2addr v1, v3

    aget-byte v2, p1, v0

    and-int/2addr v2, v3

    if-le v1, v2, :cond_10

    .line 1656
    return-object p0

    .line 1652
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1659
    :cond_13
    return-object p1
.end method

.method private static min([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .prologue
    const v3, 0xffff

    .line 1671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 1673
    aget-byte v1, p0, v0

    and-int/2addr v1, v3

    aget-byte v2, p1, v0

    and-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    .line 1675
    return-object p0

    .line 1671
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1678
    :cond_13
    return-object p1
.end method

.method private minMaxIPs([B[B[B[B)[[B
    .registers 13
    .param p1, "ip1"    # [B
    .param p2, "subnetmask1"    # [B
    .param p3, "ip2"    # [B
    .param p4, "subnetmask2"    # [B

    .prologue
    .line 460
    array-length v1, p1

    .line 461
    .local v1, "ipLength":I
    new-array v4, v1, [B

    .line 462
    .local v4, "min1":[B
    new-array v2, v1, [B

    .line 464
    .local v2, "max1":[B
    new-array v5, v1, [B

    .line 465
    .local v5, "min2":[B
    new-array v3, v1, [B

    .line 467
    .local v3, "max2":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_37

    .line 469
    aget-byte v6, p1, v0

    aget-byte v7, p2, v0

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 470
    aget-byte v6, p1, v0

    aget-byte v7, p2, v0

    and-int/2addr v6, v7

    aget-byte v7, p2, v0

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    .line 472
    aget-byte v6, p3, v0

    aget-byte v7, p4, v0

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 473
    aget-byte v6, p3, v0

    aget-byte v7, p4, v0

    and-int/2addr v6, v7

    aget-byte v7, p4, v0

    not-int v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 476
    :cond_37
    const/4 v6, 0x4

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    return-object v6
.end method

.method private static or([B[B)[B
    .registers 6
    .param p0, "ip1"    # [B
    .param p1, "ip2"    # [B

    .prologue
    .line 1713
    array-length v2, p0

    new-array v1, v2, [B

    .line 1714
    .local v1, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    .line 1716
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1714
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1718
    :cond_12
    return-object v1
.end method

.method private stringifyIP([B)Ljava/lang/String;
    .registers 7
    .param p1, "ip"    # [B

    .prologue
    const/4 v4, 0x0

    .line 1843
    const-string/jumbo v1, ""

    .line 1844
    .local v1, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2d

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1848
    :cond_2d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    array-length v2, p1

    div-int/lit8 v0, v2, 0x2

    :goto_4e
    array-length v2, p1

    if-ge v0, v2, :cond_74

    .line 1852
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1854
    :cond_74
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1855
    return-object v1
.end method

.method private stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .param p1, "ips"    # Ljava/util/Set;

    .prologue
    .line 1860
    const-string/jumbo v1, ""

    .line 1861
    .local v1, "temp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1862
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->stringifyIP([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 1866
    :cond_44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_56

    .line 1868
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1870
    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1871
    return-object v1
.end method

.method private unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dn"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    .line 170
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 172
    if-nez p2, :cond_9

    .line 174
    return-object p1

    .line 176
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    return-object p1

    .line 182
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 184
    .local v0, "intersect":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 189
    .local v2, "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 191
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 193
    :cond_2c
    invoke-static {v2, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 195
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 199
    :cond_36
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 204
    .end local v2    # "subtree":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :cond_3d
    return-object v0
.end method

.method private unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 241
    if-nez p2, :cond_9

    .line 243
    return-object p1

    .line 245
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    return-object p1

    .line 250
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 252
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 253
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    .local v0, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v0, p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_16

    .line 260
    .end local v0    # "_excluded":Ljava/lang/String;
    :cond_26
    return-object v2
.end method

.method private unionEmail(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x40

    .line 761
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_55

    .line 763
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2a

    .line 767
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 769
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_22
    return-void

    .line 773
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_23
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 778
    :cond_2a
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 780
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 782
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 786
    :cond_3d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 793
    :cond_44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 795
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 799
    :cond_4e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 805
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_55
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 807
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7f

    .line 809
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 812
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 816
    :cond_78
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 821
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_7f
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 823
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 824
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 823
    if-eqz v1, :cond_98

    .line 826
    :cond_94
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 828
    :cond_98
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 830
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 834
    :cond_a2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 840
    :cond_aa
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 842
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 846
    :cond_b5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 854
    :cond_bd
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_e0

    .line 856
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 857
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 859
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 863
    :cond_d8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 868
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_e0
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 870
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 872
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 876
    :cond_f4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 883
    :cond_fc
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 885
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 889
    :cond_107
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 890
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22
.end method

.method private unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "ip"    # [B

    .prologue
    .line 313
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 315
    if-nez p2, :cond_9

    .line 317
    return-object p1

    .line 319
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p1

    .line 325
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 327
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 328
    .local v1, "it":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 330
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 331
    .local v0, "_excluded":[B
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionIPRange([B[B)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 334
    .end local v0    # "_excluded":[B
    :cond_2a
    return-object v2
.end method

.method private unionIPRange([B[B)Ljava/util/Set;
    .registers 5
    .param p1, "ipWithSubmask1"    # [B
    .param p2, "ipWithSubmask2"    # [B

    .prologue
    .line 347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 350
    .local v0, "set":Ljava/util/Set;
    invoke-static {p1, p2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 352
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_e
    return-object v0

    .line 356
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 1262
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1264
    if-nez p2, :cond_9

    .line 1266
    return-object p1

    .line 1268
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1270
    return-object p1

    .line 1274
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1276
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1277
    .local v1, "_iter":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1281
    .local v0, "_excluded":Ljava/lang/String;
    invoke-direct {p0, v0, p2, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_16

    .line 1284
    .end local v0    # "_excluded":Ljava/lang/String;
    :cond_26
    return-object v2
.end method

.method private unionURI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 8
    .param p1, "email1"    # Ljava/lang/String;
    .param p2, "email2"    # Ljava/lang/String;
    .param p3, "union"    # Ljava/util/Set;

    .prologue
    const/4 v3, -0x1

    const/16 v2, 0x40

    .line 899
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_55

    .line 901
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    .local v0, "_sub":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_2a

    .line 905
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 907
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1032
    .end local v0    # "_sub":Ljava/lang/String;
    :goto_22
    return-void

    .line 911
    .restart local v0    # "_sub":Ljava/lang/String;
    :cond_23
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 912
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 916
    :cond_2a
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 918
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 920
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 924
    :cond_3d
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 931
    :cond_44
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 933
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 937
    :cond_4e
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 943
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_55
    const-string/jumbo v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 945
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_7f

    .line 947
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 948
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 950
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 954
    :cond_78
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 959
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_7f
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 961
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 962
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 961
    if-eqz v1, :cond_98

    .line 964
    :cond_94
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 966
    :cond_98
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 968
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 972
    :cond_a2
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 978
    :cond_aa
    invoke-direct {p0, p2, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 980
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 984
    :cond_b5
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 992
    :cond_bd
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_e0

    .line 994
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    .restart local v0    # "_sub":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 997
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1001
    :cond_d8
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1006
    .end local v0    # "_sub":Ljava/lang/String;
    :cond_e0
    const-string/jumbo v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 1008
    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 1010
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1014
    :cond_f4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1021
    :cond_fc
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 1023
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 1027
    :cond_107
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22
.end method

.method private static withinDNSubtree(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Z
    .registers 7
    .param p0, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v1, v4, :cond_9

    .line 52
    return v3

    .line 55
    :cond_9
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v1, v2, :cond_14

    .line 57
    return v3

    .line 60
    :cond_14
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "j":I
    :goto_1a
    if-ltz v0, :cond_2e

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 64
    return v3

    .line 60
    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 68
    :cond_2e
    return v4
.end method

.method private withinDomain(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "testDomain"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2e

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 668
    move-object v3, p2

    .line 669
    .local v3, "tempDomain":Ljava/lang/String;
    const-string/jumbo v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 671
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 673
    :cond_12
    invoke-static {v3, v6}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "domainParts":[Ljava/lang/String;
    invoke-static {p1, v6}, Lcom/android/org/bouncycastle/util/Strings;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "testDomainParts":[Ljava/lang/String;
    array-length v5, v4

    array-length v6, v1

    if-gt v5, v6, :cond_1f

    .line 678
    return v7

    .line 680
    :cond_1f
    array-length v5, v4

    array-length v6, v1

    sub-int v0, v5, v6

    .line 681
    .local v0, "d":I
    const/4 v2, -0x1

    .local v2, "i":I
    :goto_24
    array-length v5, v1

    if-ge v2, v5, :cond_48

    .line 683
    const/4 v5, -0x1

    if-ne v2, v5, :cond_38

    .line 685
    add-int v5, v2, v0

    aget-object v5, v4, v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 687
    return v7

    .line 690
    :cond_38
    aget-object v5, v1, v2

    add-int v6, v2, v0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 692
    return v7

    .line 681
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 695
    :cond_48
    return v8
.end method


# virtual methods
.method public addExcludedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 5
    .param p1, "subtree"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 1616
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 1618
    .local v0, "base":Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 1641
    :goto_b
    :pswitch_b
    return-void

    .line 1621
    :pswitch_c
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    .line 1622
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    goto :goto_b

    .line 1625
    :pswitch_19
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 1626
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1625
    invoke-virtual {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    goto :goto_b

    .line 1629
    :pswitch_26
    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    .line 1630
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 1629
    invoke-direct {p0, v2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    goto :goto_b

    .line 1633
    :pswitch_39
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 1634
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1633
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionURI(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    goto :goto_b

    .line 1637
    :pswitch_46
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    .line 1638
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 1637
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    goto :goto_b

    .line 1618
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_19
        :pswitch_b
        :pswitch_26
        :pswitch_b
        :pswitch_39
        :pswitch_46
    .end packed-switch
.end method

.method public checkExcluded(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 1523
    :goto_7
    :pswitch_7
    return-void

    .line 1504
    :pswitch_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1507
    :pswitch_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    .line 1508
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 1507
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDNS(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1511
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 1515
    :pswitch_34
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    .line 1516
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 1515
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedURI(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1519
    :pswitch_46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 1521
    .local v0, "ip":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedIP(Ljava/util/Set;[B)V

    goto :goto_7

    .line 1501
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_24
        :pswitch_7
        :pswitch_34
        :pswitch_46
    .end packed-switch
.end method

.method public checkExcludedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 81
    return-void
.end method

.method public checkPermitted(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .registers 5
    .param p1, "name"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 1465
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 1488
    :goto_7
    :pswitch_7
    return-void

    .line 1468
    :pswitch_8
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->extractNameAsString(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1472
    :pswitch_12
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 1473
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 1472
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDNS(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1476
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 1480
    :pswitch_34
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 1481
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 1480
    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedURI(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_7

    .line 1484
    :pswitch_46
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 1486
    .local v0, "ip":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedIP(Ljava/util/Set;[B)V

    goto :goto_7

    .line 1465
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_24
        :pswitch_7
        :pswitch_34
        :pswitch_46
    .end packed-switch
.end method

.method public checkPermittedDN(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .param p1, "dns"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Ljava/util/Set;Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 75
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1760
    instance-of v2, p1, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v2, :cond_6

    .line 1762
    return v1

    :cond_6
    move-object v0, p1

    .line 1764
    check-cast v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    .line 1765
    .local v0, "constraintValidator":Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1766
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1767
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1768
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1769
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1770
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1771
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1772
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1773
    iget-object v2, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v2, v3}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    .line 1765
    if-eqz v2, :cond_6b

    .line 1774
    iget-object v1, v0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, v1, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->collectionsAreEqual(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    .line 1765
    :cond_6b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v0

    .line 1724
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1725
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1726
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1727
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1728
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1729
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1730
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1731
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    .line 1732
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->hashCollection(Ljava/util/Collection;)I

    move-result v1

    .line 1723
    add-int/2addr v0, v1

    return v0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .registers 3
    .param p1, "nameType"    # I

    .prologue
    .line 1590
    packed-switch p1, :pswitch_data_2c

    .line 1607
    :goto_3
    :pswitch_3
    return-void

    .line 1593
    :pswitch_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    goto :goto_3

    .line 1596
    :pswitch_c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    goto :goto_3

    .line 1599
    :pswitch_14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    goto :goto_3

    .line 1602
    :pswitch_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    goto :goto_3

    .line 1605
    :pswitch_24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    goto :goto_3

    .line 1590
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_14
        :pswitch_3
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method public intersectPermittedSubtree(Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 4
    .param p1, "permitted"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 1527
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 1528
    return-void
.end method

.method public intersectPermittedSubtree([Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    .registers 10
    .param p1, "permitted"    # [Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 1539
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1542
    .local v4, "subtreesMap":Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v6, p1

    if-eq v1, v6, :cond_31

    .line 1544
    aget-object v3, p1, v1

    .line 1545
    .local v3, "subtree":Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1546
    .local v5, "tagNo":Ljava/lang/Integer;
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_25

    .line 1548
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :cond_25
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1542
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1553
    .end local v3    # "subtree":Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "tagNo":Ljava/lang/Integer;
    :cond_31
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1558
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_a0

    :pswitch_52
    goto :goto_39

    .line 1561
    :pswitch_53
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    .line 1562
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1561
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectEmail(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    goto :goto_39

    .line 1565
    :pswitch_62
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    .line 1566
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1565
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectDNS(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    goto :goto_39

    .line 1569
    :pswitch_71
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    .line 1570
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1569
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectDN(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    goto :goto_39

    .line 1573
    :pswitch_80
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    .line 1574
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1573
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectURI(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    goto :goto_39

    .line 1577
    :pswitch_8f
    iget-object v7, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    .line 1578
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1577
    invoke-direct {p0, v7, v6}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectIP(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    goto :goto_39

    .line 1581
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_9e
    return-void

    .line 1558
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_62
        :pswitch_52
        :pswitch_71
        :pswitch_52
        :pswitch_80
        :pswitch_8f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1876
    const-string/jumbo v0, ""

    .line 1877
    .local v0, "temp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "permitted:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    if-eqz v1, :cond_4d

    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DN:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDN:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1883
    :cond_4d
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    if-eqz v1, :cond_83

    .line 1885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DNS:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesDNS:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1888
    :cond_83
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    if-eqz v1, :cond_b9

    .line 1890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Email:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesEmail:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1893
    :cond_b9
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    if-eqz v1, :cond_ef

    .line 1895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "URI:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesURI:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    :cond_ef
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    if-eqz v1, :cond_125

    .line 1900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IP:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->permittedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    :cond_125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "excluded:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_173

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DN:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDN:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    :cond_173
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1ad

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DNS:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesDNS:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1914
    :cond_1ad
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e7

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Email:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesEmail:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1919
    :cond_1e7
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_221

    .line 1921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "URI:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesURI:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    :cond_221
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25b

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "IP:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->excludedSubtreesIP:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->stringifyIPCollection(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1929
    :cond_25b
    return-object v0
.end method

.method protected unionDNS(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p1, "excluded"    # Ljava/util/Set;
    .param p2, "dns"    # Ljava/lang/String;

    .prologue
    .line 1072
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1074
    if-nez p2, :cond_9

    .line 1076
    return-object p1

    .line 1078
    :cond_9
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    return-object p1

    .line 1084
    :cond_d
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1086
    .local v2, "union":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1087
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1089
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1091
    .local v1, "_permitted":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1093
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1095
    :cond_2c
    invoke-direct {p0, p2, v1}, Lcom/android/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->withinDomain(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1097
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1101
    :cond_36
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1106
    .end local v1    # "_permitted":Ljava/lang/String;
    :cond_3d
    return-object v2
.end method
