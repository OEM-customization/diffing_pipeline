.class Ljava/util/jar/JarVerifier$1;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist name:Ljava/lang/String;

.field final synthetic blacklist this$0:Ljava/util/jar/JarVerifier;

.field final synthetic blacklist val$enum2:Ljava/util/Enumeration;

.field final synthetic blacklist val$itor:Ljava/util/Iterator;

.field final synthetic blacklist val$signersReq:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;

    .line 723
    iput-object p1, p0, Ljava/util/jar/JarVerifier$1;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$1;->val$itor:Ljava/util/Iterator;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$1;->val$signersReq:Ljava/util/List;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$1;->val$enum2:Ljava/util/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 5

    .line 728
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 729
    return v1

    .line 732
    :cond_6
    :goto_6
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->val$itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 733
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->val$itor:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 734
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    iget-object v2, p0, Ljava/util/jar/JarVerifier$1;->val$signersReq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 735
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/jar/JarVerifier$1;->name:Ljava/lang/String;

    .line 736
    return v1

    .line 738
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/security/CodeSigner;>;"
    :cond_2b
    goto :goto_6

    .line 739
    :cond_2c
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->val$enum2:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 740
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->val$enum2:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/util/jar/JarVerifier$1;->name:Ljava/lang/String;

    .line 741
    return v1

    .line 743
    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 723
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .registers 3

    .line 747
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$1;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 748
    iget-object v0, p0, Ljava/util/jar/JarVerifier$1;->name:Ljava/lang/String;

    .line 749
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$1;->name:Ljava/lang/String;

    .line 750
    return-object v0

    .line 752
    .end local v0    # "value":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
