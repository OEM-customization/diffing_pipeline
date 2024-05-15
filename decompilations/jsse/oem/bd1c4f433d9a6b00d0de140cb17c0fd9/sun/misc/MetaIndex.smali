.class public Lsun/misc/MetaIndex;
.super Ljava/lang/Object;
.source "MetaIndex.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static volatile jarMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contents:[Ljava/lang/String;

.field private isClassOnlyJar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/misc/MetaIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Z)V
    .registers 4
    .param p2, "isClassOnlyJar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    if-nez p1, :cond_b

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 259
    :cond_b
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
.end method

.method public static forJar(Ljava/io/File;)Lsun/misc/MetaIndex;
    .registers 2
    .param p0, "jar"    # Ljava/io/File;

    .prologue
    .line 147
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/MetaIndex;

    return-object v0
.end method

.method private static getJarMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lsun/misc/MetaIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_13

    .line 265
    const-class v1, Lsun/misc/MetaIndex;

    monitor-enter v1

    .line 266
    :try_start_7
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_21

    :cond_12
    monitor-exit v1

    .line 271
    :cond_13
    sget-boolean v0, Lsun/misc/MetaIndex;->-assertionsDisabled:Z

    if-nez v0, :cond_24

    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 265
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0

    .line 272
    :cond_24
    sget-object v0, Lsun/misc/MetaIndex;->jarMap:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized registerDirectory(Ljava/io/File;)V
    .registers 12
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const-class v9, Lsun/misc/MetaIndex;

    monitor-enter v9

    .line 162
    :try_start_3
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "meta-index"

    invoke-direct {v3, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .local v3, "indexFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_9a

    move-result v8

    if-eqz v8, :cond_7b

    .line 165
    :try_start_11
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 166
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 167
    .local v5, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 168
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 169
    .local v4, "isCurJarContainClassOnly":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/misc/MetaIndex;->getJarMap()Ljava/util/Map;

    move-result-object v6

    .line 173
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 177
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_3c

    .line 179
    const-string/jumbo v8, "% VERSION 2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 178
    if-eqz v8, :cond_68

    .line 180
    :cond_3c
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_7a
    .catchall {:try_start_11 .. :try_end_3f} :catchall_9a

    monitor-exit v9

    .line 181
    return-void

    .line 189
    .end local v1    # "curJarName":Ljava/lang/String;
    :sswitch_41
    if-eqz v1, :cond_59

    :try_start_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_59

    .line 190
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    .line 190
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 197
    :cond_59
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "curJarName":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x21

    if-ne v8, v10, :cond_7d

    .line 199
    const/4 v4, 0x1

    .line 183
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_68
    :goto_68
    :sswitch_68
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_81

    .line 184
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_9e

    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_79} :catch_7a
    .catchall {:try_start_43 .. :try_end_79} :catchall_9a

    goto :goto_68

    .line 221
    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_7a
    move-exception v2

    :cond_7b
    :goto_7b
    monitor-exit v9

    .line 226
    return-void

    .line 200
    .restart local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "curJarName":Ljava/lang/String;
    .restart local v4    # "isCurJarContainClassOnly":Z
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_7d
    if-eqz v4, :cond_68

    .line 201
    const/4 v4, 0x0

    goto :goto_68

    .line 214
    .end local v1    # "curJarName":Ljava/lang/String;
    :cond_81
    if-eqz v1, :cond_96

    :try_start_83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_96

    .line 215
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    new-instance v10, Lsun/misc/MetaIndex;

    invoke-direct {v10, v0, v4}, Lsun/misc/MetaIndex;-><init>(Ljava/util/List;Z)V

    .line 215
    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_96
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_99} :catch_7a
    .catchall {:try_start_83 .. :try_end_99} :catchall_9a

    goto :goto_7b

    .end local v0    # "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "indexFile":Ljava/io/File;
    .end local v4    # "isCurJarContainClassOnly":Z
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lsun/misc/MetaIndex;>;"
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_9a
    move-exception v8

    monitor-exit v9

    throw v8

    .line 184
    nop

    :sswitch_data_9e
    .sparse-switch
        0x21 -> :sswitch_41
        0x23 -> :sswitch_41
        0x25 -> :sswitch_68
        0x40 -> :sswitch_41
    .end sparse-switch
.end method


# virtual methods
.method public mayContain(Ljava/lang/String;)Z
    .registers 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-boolean v2, p0, Lsun/misc/MetaIndex;->isClassOnlyJar:Z

    if-eqz v2, :cond_11

    const-string/jumbo v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    .line 237
    return v3

    .line 240
    :cond_11
    iget-object v0, p0, Lsun/misc/MetaIndex;->contents:[Ljava/lang/String;

    .line 241
    .local v0, "conts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 242
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 243
    const/4 v2, 0x1

    return v2

    .line 241
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 246
    :cond_24
    return v3
.end method
