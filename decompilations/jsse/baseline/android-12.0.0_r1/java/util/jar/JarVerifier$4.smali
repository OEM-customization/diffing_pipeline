.class Ljava/util/jar/JarVerifier$4;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
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

.field final synthetic blacklist val$entries:Ljava/util/Enumeration;

.field final synthetic blacklist val$map:Ljava/util/Map;


# direct methods
.method constructor blacklist <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;

    .line 825
    iput-object p1, p0, Ljava/util/jar/JarVerifier$4;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 5

    .line 834
    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 835
    return v1

    .line 837
    :cond_6
    :goto_6
    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 839
    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 840
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 842
    goto :goto_6

    .line 844
    :cond_27
    iget-object v3, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_32

    .line 845
    iput-object v2, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    .line 846
    return v1

    .line 848
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v2    # "value":Ljava/lang/String;
    :cond_32
    goto :goto_6

    .line 849
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 825
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .registers 3

    .line 853
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 854
    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    .line 855
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    .line 856
    return-object v0

    .line 858
    .end local v0    # "value":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
