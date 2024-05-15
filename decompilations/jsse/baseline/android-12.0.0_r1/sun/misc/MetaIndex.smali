.class public Lsun/misc/MetaIndex;
.super Ljava/lang/Object;
.source "MetaIndex.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static volatile greylist-max-o jarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o contents:[Ljava/lang/String;

.field private greylist-max-o isClassOnlyJar:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 129
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "isClassOnlyJar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 254
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    if-eqz p1, :cond_13

    .line 259
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 260
    iput-boolean p2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    .line 261
    return-void

    .line 256
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static greylist forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .registers 2
    .param p0, "jar"    # Ljava/io/File;

    .line 147
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/MetaIndex;

    return-object v0
.end method

.method private static greylist-max-o getJarMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation

    .line 264
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_17

    .line 265
    const-class v0, Lsun/misc/MetaIndex;

    monitor-enter v0

    .line 266
    :try_start_7
    sget-object v1, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v1, :cond_12

    .line 267
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    .line 269
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 271
    :cond_17
    :goto_17
    nop

    .line 272
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized greylist registerDirectory(Ljava/io/File;)V
    .registers 12
    .param p0, "dir"    # Ljava/io/File;

    const-class v0, Lsun/misc/MetaIndex;

    monitor-enter v0

    .line 162
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "meta-index"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v1, "indexFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9c

    if-eqz v2, :cond_9a

    .line 165
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 167
    .local v3, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 168
    .local v4, "curJarName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 169
    .local v5, "isCurJarContainClassOnly":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v6, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v7

    .line 173
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v8

    move-object p0, v8

    .line 177
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 178
    if-eqz v3, :cond_94

    const-string v8, "% VERSION 2"

    .line 179
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    goto :goto_94

    .line 183
    :cond_3b
    :goto_3b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    if-eqz v8, :cond_7b

    .line 184
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sparse-switch v9, :sswitch_data_a0

    .line 209
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 207
    :sswitch_4e
    goto :goto_3b

    .line 189
    :sswitch_4f
    if-eqz v4, :cond_67

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_67

    .line 190
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v6, v5}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 197
    :cond_67
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 198
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x21

    if-ne v8, v9, :cond_77

    .line 199
    const/4 v5, 0x1

    goto :goto_3b

    .line 200
    :cond_77
    if-eqz v5, :cond_3b

    .line 201
    const/4 v5, 0x0

    goto :goto_3b

    .line 214
    :cond_7b
    if-eqz v4, :cond_90

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_90

    .line 215
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Lsun/misc/MetaIndex;

    invoke-direct {v9, v6, v5}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_90
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 224
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "curJarName":Ljava/lang/String;
    .end local v5    # "isCurJarContainClassOnly":Z
    .end local v6    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    goto :goto_9a

    .line 180
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "curJarName":Ljava/lang/String;
    .restart local v5    # "isCurJarContainClassOnly":Z
    .restart local v6    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    :cond_94
    :goto_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_97} :catch_99
    .catchall {:try_start_10 .. :try_end_97} :catchall_9c

    .line 181
    monitor-exit v0

    return-void

    .line 221
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "curJarName":Ljava/lang/String;
    .end local v5    # "isCurJarContainClassOnly":Z
    .end local v6    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    :catch_99
    move-exception v2

    .line 226
    :cond_9a
    :goto_9a
    monitor-exit v0

    return-void

    .line 161
    .end local v1    # "indexFile":Ljava/io/File;
    .end local p0    # "dir":Ljava/io/File;
    :catchall_9c
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :sswitch_data_a0
    .sparse-switch
        0x21 -> :sswitch_4f
        0x23 -> :sswitch_4f
        0x25 -> :sswitch_4e
        0x40 -> :sswitch_4f
    .end sparse-switch
.end method


# virtual methods
.method public blacklist mayContain(Ljava/lang/String;)Z
    .registers 6
    .param p1, "entry"    # Ljava/lang/String;

    .line 236
    iget-boolean v0, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 237
    return v1

    .line 240
    :cond_e
    iget-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 241
    .local v0, "conts":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 242
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 243
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 246
    .end local v2    # "i":I
    :cond_21
    return v1
.end method
