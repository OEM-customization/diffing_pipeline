.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field private volatile greylist-max-o lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private declared-synchronized greylist-max-o loadLookup()V
    .registers 7

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v0, :cond_7

    .line 193
    monitor-exit p0

    return-void

    .line 195
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "contents":[[Ljava/lang/Object;
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    .local v1, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_32

    .line 199
    aget-object v3, v0, v2

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "key":Ljava/lang/String;
    aget-object v4, v0, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 201
    .local v4, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2c

    if-eqz v4, :cond_2c

    .line 204
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    nop

    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 202
    .end local p0    # "this":Ljava/util/ListResourceBundle;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2c
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 206
    .end local v2    # "i":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_32
    iput-object v1, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_36

    .line 207
    monitor-exit p0

    return-void

    .line 191
    .end local v0    # "contents":[[Ljava/lang/Object;
    .end local v1    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract whitelist core-platform-api test-api getContents()[[Ljava/lang/Object;
.end method

.method public whitelist core-platform-api test-api getKeys()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 149
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 152
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 153
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v1, Lsun/util/ResourceBundleEnumeration;

    iget-object v2, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 154
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    :goto_19
    invoke-direct {v1, v2, v3}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    .line 153
    return-object v1
.end method

.method public final whitelist core-platform-api test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 130
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 132
    :cond_7
    if-eqz p1, :cond_10

    .line 135
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 133
    :cond_10
    const/4 v0, 0x0

    throw v0
.end method

.method protected whitelist core-platform-api test-api handleKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 168
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 170
    :cond_7
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
