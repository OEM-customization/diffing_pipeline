.class Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "PKCS12KeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1753
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    .line 1750
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;)V
    .registers 2
    .param p1, "-this0"    # Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;

    .prologue
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1786
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_f

    move-object v1, v2

    :goto_6
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1787
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1789
    return-object v2

    .line 1786
    .end local v0    # "k":Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1792
    .restart local v0    # "k":Ljava/lang/String;
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1757
    if-nez p1, :cond_1d

    const/4 v1, 0x0

    .line 1758
    :goto_3
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1759
    .local v0, "k":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 1761
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    :cond_12
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1765
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    return-void

    .line 1757
    .end local v0    # "k":Ljava/lang/String;
    :cond_1d
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "lower":Ljava/lang/String;
    goto :goto_3
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1775
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    if-nez p1, :cond_f

    move-object v1, v2

    :goto_6
    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1776
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 1778
    return-object v2

    .line 1775
    .end local v0    # "k":Ljava/lang/String;
    :cond_f
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1781
    .restart local v0    # "k":Ljava/lang/String;
    :cond_14
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
