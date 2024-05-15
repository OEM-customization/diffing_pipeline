.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 467
    new-instance v0, Lsun/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    .line 465
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 477
    check-cast p1, Lsun/security/x509/AVA;

    check-cast p2, Lsun/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    move-result v0

    return v0
.end method

.method public compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .registers 11
    .param p1, "a1"    # Lsun/security/x509/AVA;
    .param p2, "a2"    # Lsun/security/x509/AVA;

    .prologue
    .line 482
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    .line 483
    .local v0, "a1Has2253":Z
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v2

    .line 486
    .local v2, "a2Has2253":Z
    if-eqz v0, :cond_1b

    .line 487
    if-eqz v2, :cond_19

    .line 488
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v7

    .line 488
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6

    .line 491
    :cond_19
    const/4 v6, -0x1

    return v6

    .line 494
    :cond_1b
    if-eqz v2, :cond_1f

    .line 495
    const/4 v6, 0x1

    return v6

    .line 497
    :cond_1f
    invoke-virtual {p1}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v1

    .line 498
    .local v1, "a1Oid":[I
    invoke-virtual {p2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v3

    .line 499
    .local v3, "a2Oid":[I
    const/4 v5, 0x0

    .line 500
    .local v5, "pos":I
    array-length v6, v1

    array-length v7, v3

    if-le v6, v7, :cond_40

    array-length v4, v3

    .line 502
    .local v4, "len":I
    :goto_35
    if-ge v5, v4, :cond_42

    aget v6, v1, v5

    aget v7, v3, v5

    if-ne v6, v7, :cond_42

    .line 503
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 501
    .end local v4    # "len":I
    :cond_40
    array-length v4, v1

    .restart local v4    # "len":I
    goto :goto_35

    .line 505
    :cond_42
    if-ne v5, v4, :cond_48

    array-length v6, v1

    array-length v7, v3

    sub-int/2addr v6, v7

    :goto_47
    return v6

    .line 506
    :cond_48
    aget v6, v1, v5

    aget v7, v3, v5

    sub-int/2addr v6, v7

    goto :goto_47
.end method
