.class Ljava/util/jar/JarFile$JarEntryIterator;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/util/jar/JarEntry;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o e:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/jar/JarFile;


# direct methods
.method private constructor blacklist <init>(Ljava/util/jar/JarFile;)V
    .registers 2

    .line 257
    iput-object p1, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iget-object p1, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    # invokes: Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    invoke-static {p1}, Ljava/util/jar/JarFile;->access$001(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarFile$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/jar/JarFile;
    .param p2, "x1"    # Ljava/util/jar/JarFile$1;

    .line 257
    invoke-direct {p0, p1}, Ljava/util/jar/JarFile$JarEntryIterator;-><init>(Ljava/util/jar/JarFile;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasMoreElements()Z
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 263
    iget-object v0, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2

    .line 257
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->next()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/jar/JarEntry;
    .registers 4

    .line 267
    iget-object v0, p0, Ljava/util/jar/JarFile$JarEntryIterator;->e:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 268
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    iget-object v2, p0, Ljava/util/jar/JarFile$JarEntryIterator;->this$0:Ljava/util/jar/JarFile;

    invoke-direct {v1, v2, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    return-object v1
.end method

.method public bridge synthetic whitelist core-platform-api test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 257
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/util/jar/JarEntry;
    .registers 2

    .line 276
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarEntryIterator;->next()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method
