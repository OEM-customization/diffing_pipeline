.class public Lsun/misc/JarIndex;
.super Ljava/lang/Object;
.source "JarIndex.java"


# static fields
.field public static final blacklist INDEX_NAME:Ljava/lang/String; = "META-INF/INDEX.LIST"

.field private static final greylist-max-o metaInfFilenames:Z


# instance fields
.field private greylist-max-o indexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o jarFiles:[Ljava/lang/String;

.field private greylist-max-o jarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 76
    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.misc.JarIndex.metaInfFilenames"

    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lsun/misc/JarIndex;->metaInfFilenames:Z

    .line 76
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

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

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lsun/misc/JarIndex;->read(Ljava/io/InputStream;)V

    .line 96
    return-void
.end method

.method public constructor greylist <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lsun/misc/JarIndex;-><init>()V

    .line 105
    iput-object p1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lsun/misc/JarIndex;->parseJars([Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private greylist-max-o addMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "jarItem"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 220
    iget-object v0, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-direct {p0, p2, p1, v0}, Lsun/misc/JarIndex;->addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 221
    return-void
.end method

.method private greylist-max-o addToList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 158
    .local p3, "t":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 159
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    .line 160
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 161
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 163
    :cond_15
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 164
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static blacklist getJarIndex(Ljava/util/jar/JarFile;)Lsun/misc/JarIndex;
    .registers 2
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lsun/misc/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getJarIndex(Ljava/util/jar/JarFile;Lsun/misc/MetaIndex;)Lsun/misc/JarIndex;
    .registers 6
    .param p0, "jar"    # Ljava/util/jar/JarFile;
    .param p1, "metaIndex"    # Lsun/misc/MetaIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .line 133
    .local v0, "index":Lsun/misc/JarIndex;
    const-string v1, "META-INF/INDEX.LIST"

    if-eqz p1, :cond_d

    .line 134
    invoke-virtual {p1, v1}, Lsun/misc/MetaIndex;->mayContain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 135
    const/4 v1, 0x0

    return-object v1

    .line 137
    :cond_d
    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v1

    .line 139
    .local v1, "e":Ljava/util/jar/JarEntry;
    if-eqz v1, :cond_1d

    .line 140
    new-instance v2, Lsun/misc/JarIndex;

    invoke-virtual {p0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/misc/JarIndex;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 142
    :cond_1d
    return-object v0
.end method

.method private greylist-max-o parseJars([Ljava/lang/String;)V
    .registers 10
    .param p1, "files"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    if-nez p1, :cond_3

    .line 229
    return-void

    .line 232
    :cond_3
    const/4 v0, 0x0

    .line 234
    .local v0, "currentJar":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_63

    .line 235
    aget-object v0, p1, v1

    .line 236
    new-instance v2, Ljava/util/zip/ZipFile;

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 237
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 239
    .local v2, "zrf":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 240
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 241
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 242
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, "fileName":Ljava/lang/String;
    const-string v6, "META-INF/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 247
    const-string v7, "META-INF/INDEX.LIST"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 248
    const-string v7, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 249
    goto :goto_1b

    .line 251
    :cond_44
    sget-boolean v7, Lsun/misc/JarIndex;->metaInfFilenames:Z

    if-eqz v7, :cond_59

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_59

    .line 253
    :cond_4f
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 258
    invoke-direct {p0, v5, v0}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 252
    :cond_59
    :goto_59
    invoke-virtual {p0, v5, v0}, Lsun/misc/JarIndex;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_5c
    :goto_5c
    goto :goto_1b

    .line 262
    :cond_5d
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 234
    .end local v2    # "zrf":Ljava/util/zip/ZipFile;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 264
    .end local v1    # "i":I
    :cond_63
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "jarName"    # Ljava/lang/String;

    .line 201
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_11

    .line 204
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_10
    move-object v0, p1

    .line 207
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_11
    invoke-direct {p0, v0, p2}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "jarFiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    move-object v0, v1

    if-nez v1, :cond_24

    .line 178
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "pos":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_24

    .line 179
    iget-object v1, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/LinkedList;

    .line 182
    .end local v2    # "pos":I
    :cond_24
    return-object v0
.end method

.method public blacklist getJarFiles()[Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist merge(Lsun/misc/JarIndex;Ljava/lang/String;)V
    .registers 9
    .param p1, "toIndex"    # Lsun/misc/JarIndex;
    .param p2, "path"    # Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lsun/misc/JarIndex;->indexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 342
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 343
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 344
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 345
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 346
    .local v3, "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 347
    .local v4, "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 348
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .local v5, "jarName":Ljava/lang/String;
    if-eqz p2, :cond_38

    .line 350
    invoke-virtual {p2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    :cond_38
    invoke-direct {p1, v2, v5}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v5    # "jarName":Ljava/lang/String;
    goto :goto_26

    .line 354
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/String;>;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "from_list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v4    # "listItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3c
    goto :goto_a

    .line 355
    :cond_3d
    return-void
.end method

.method public blacklist read(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 305
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 306
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 309
    .local v2, "currentJar":Ljava/lang/String;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 312
    .local v3, "jars":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :goto_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const-string v5, ".jar"

    if-eqz v4, :cond_23

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_13

    .line 314
    :cond_23
    :goto_23
    if-eqz v1, :cond_40

    .line 315
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2c

    .line 316
    goto :goto_3b

    .line 318
    :cond_2c
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 319
    move-object v2, v1

    .line 320
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 322
    :cond_37
    move-object v4, v1

    .line 323
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lsun/misc/JarIndex;->addMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v4    # "name":Ljava/lang/String;
    :goto_3b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 327
    :cond_40
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    .line 328
    return-void
.end method

.method public greylist write(Ljava/io/OutputStream;)V
    .registers 10
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 275
    .local v0, "bw":Ljava/io/BufferedWriter;
    const-string v1, "JarIndex-Version: 1.0\n\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    iget-object v2, p0, Lsun/misc/JarIndex;->jarFiles:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_64

    .line 280
    aget-object v2, v2, v1

    .line 281
    .local v2, "jar":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lsun/misc/JarIndex;->jarMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 283
    .local v3, "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v3, :cond_5e

    .line 284
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 285
    .local v5, "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3f

    .line 289
    .end local v5    # "listitr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5e
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 278
    .end local v2    # "jar":Ljava/lang/String;
    .end local v3    # "jarlist":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 291
    .end local v1    # "i":I
    :cond_64
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 293
    :cond_67
    return-void
.end method
