.class Ljava/util/jar/JarVerifier$3;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/jar/JarEntry;

.field signers:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/jar/JarVerifier;

.field final synthetic val$enum_:Ljava/util/Enumeration;

.field final synthetic val$jar:Ljava/util/jar/JarFile;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;

    .prologue
    .line 1
    iput-object p1, p0, Ljava/util/jar/JarVerifier$3;->this$0:Ljava/util/jar/JarVerifier;

    iput-object p2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    .line 1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 767
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_6

    .line 768
    return v4

    .line 770
    :cond_6
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 771
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 772
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 775
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    .line 776
    return v4

    .line 778
    .end local v1    # "ze":Ljava/util/zip/ZipEntry;
    :cond_29
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    if-nez v2, :cond_39

    .line 779
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    .line 781
    :cond_39
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 782
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    .line 784
    return v4

    .line 788
    .end local v0    # "name":Ljava/lang/String;
    :cond_57
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .registers 4

    .prologue
    .line 792
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 793
    iget-object v0, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    .line 794
    .local v0, "je":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    .line 796
    return-object v0

    .line 798
    .end local v0    # "je":Ljava/util/jar/JarEntry;
    :cond_15
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
