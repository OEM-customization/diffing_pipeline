.class public Lsun/misc/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final metaInfFilenames:Z


# instance fields
.field private indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private jarFiles:[Ljava/lang/String;

.field private jarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const-string/jumbo v0, "true"

    .line 78
    new-instance v1, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v2, "sun.misc.JarIndex.metaInfFilenames"

    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 76
    sput-boolean v0, Lsun/misc/JarIndex;->metaInfFilenames:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lsun/misc/JarIndex;->read(Ljava/io/InputStream;)V

    .line 96
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 105
    iput-object p1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lsun/misc/JarIndex;->parseJars([Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "jarItem"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 220
    iget-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 221
    return-void
.end method

.method private addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p3, "t":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 159
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_14

    .line 160
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 161
    .restart local v0    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_13
    :goto_13
    return-void

    .line 163
    :cond_14
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 164
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v0

    return-object v0
.end method

.method public static getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;
    .registers 6
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "metaIndex"    # Lsun/misc/MetaIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v1, 0x0

    .line 133
    .local v1, "index":Lsun/misc/JarIndex;
    if-eqz p1, :cond_10

    .line 134
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {p1, v2}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 133
    if-eqz v2, :cond_10

    .line 135
    return-object v3

    .line 137
    :cond_10
    const-string/jumbo v2, "META-INF/INDEX.LIST"

    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 139
    .local v0, "e":Ljava/util/jar/JarEntry;
    if-eqz v0, :cond_22

    .line 140
    new-instance v1, Lsun/misc/JarIndex;

    .end local v1    # "index":Lsun/misc/JarIndex;
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/misc/JarIndex;-><init>(Ljava/io/InputStream;)V

    .line 142
    :cond_22
    return-object v1
.end method

.method private parseJars([Ljava/lang/String;)V
    .registers 10
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    if-nez p1, :cond_3

    .line 229
    return-void

    .line 232
    :cond_3
    const/4 v0, 0x0

    .line 234
    .local v0, "currentJar":Ljava/lang/String;
    const/4 v4, 0x0

    .end local v0    # "currentJar":Ljava/lang/String;
    .local v4, "i":I
    :goto_5
    array-length v6, p1

    if-ge v4, v6, :cond_69

    .line 235
    aget-object v0, p1, v4

    .line 236
    .local v0, "currentJar":Ljava/lang/String;
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 237
    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    .line 236
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 239
    .local v5, "zrf":Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 240
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 241
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 242
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "META-INF/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 247
    const-string/jumbo v6, "META-INF/INDEX.LIST"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 246
    if-nez v6, :cond_1b

    .line 248
    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 246
    if-nez v6, :cond_1b

    .line 251
    sget-boolean v6, Lsun/misc/JarIndex;->metaInfFilenames:Z

    if-eqz v6, :cond_55

    const-string/jumbo v6, "META-INF/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_59

    .line 252
    :cond_55
    invoke-virtual {p0, v3, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 253
    :cond_59
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 258
    invoke-direct {p0, v3, v0}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 262
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_63
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 264
    .end local v0    # "currentJar":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v5    # "zrf":Ljava/util/zip/ZipFile;
    :cond_69
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 202
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "packageName":Ljava/lang/String;
    :goto_f
    invoke-direct {p0, v0, p2}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void

    .line 204
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_13
    move-object v0, p1

    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_f
.end method

.method public get(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/LinkedList;

    .local v0, "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_22

    .line 178
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 179
    iget-object v2, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    check-cast v0, Ljava/util/LinkedList;

    .line 182
    .end local v1    # "pos":I
    .restart local v0    # "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_22
    return-object v0
.end method

.method public getJarFiles()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lsun/misc/JarIndex;Ljava/lang/String;)V
    .registers 10
    .param p1, "toIndex"    # Lsun/misc/JarIndex;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v6, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 342
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 345
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 346
    .local v1, "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 347
    .local v4, "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 348
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 349
    .local v3, "jarName":Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 350
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    :cond_38
    invoke-direct {p1, v5, v3}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 355
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v1    # "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v3    # "jarName":Ljava/lang/String;
    .end local v4    # "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_3c
    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/io/BufferedReader;

    .line 304
    new-instance v5, Ljava/io/InputStreamReader;

    const-string/jumbo v6, "UTF8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 303
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 305
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 306
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 309
    .local v1, "currentJar":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 312
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "jars":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_25

    const-string/jumbo v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_14

    .line 314
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_25
    :goto_25
    if-eqz v3, :cond_45

    .line 315
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_32

    .line 314
    :goto_2d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    .line 318
    :cond_32
    const-string/jumbo v5, ".jar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 319
    move-object v1, v3

    .line 320
    .local v1, "currentJar":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 322
    .end local v1    # "currentJar":Ljava/lang/String;
    :cond_40
    move-object v4, v3

    .line 323
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 327
    .end local v4    # "name":Ljava/lang/String;
    :cond_45
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 328
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/io/BufferedWriter;

    .line 274
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string/jumbo v6, "UTF8"

    invoke-direct {v5, p1, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 273
    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 275
    .local v0, "bw":Ljava/io/BufferedWriter;
    const-string/jumbo v5, "JarIndex-Version: 1.0\n\n"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    if-eqz v5, :cond_76

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_73

    .line 280
    iget-object v5, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 281
    .local v2, "jar":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 283
    .local v3, "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v3, :cond_6a

    .line 284
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 285
    .local v4, "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_46

    .line 289
    .end local v4    # "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6a
    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 291
    .end local v2    # "jar":Ljava/lang/String;
    .end local v3    # "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_73
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 293
    .end local v1    # "i":I
    :cond_76
    return-void
.end method
