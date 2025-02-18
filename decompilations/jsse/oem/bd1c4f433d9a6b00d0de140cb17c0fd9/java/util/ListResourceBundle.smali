.class public abstract Ljava/util/ListResourceBundle;
.super Ljava/util/ResourceBundle;
.source "ListResourceBundle.java"


# instance fields
.field private volatile lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    .line 124
    return-void
.end method

.method private declared-synchronized loadLookup()V
    .registers 8

    .prologue
    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v5, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v5, :cond_7

    monitor-exit p0

    .line 193
    return-void

    .line 195
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/util/ListResourceBundle;->getContents()[[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "contents":[[Ljava/lang/Object;
    new-instance v3, Ljava/util/HashMap;

    array-length v5, v0

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    .local v3, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v5, v0

    if-ge v1, v5, :cond_34

    .line 199
    aget-object v5, v0, v1

    const/4 v6, 0x0

    aget-object v2, v5, v6

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, "key":Ljava/lang/String;
    aget-object v5, v0, v1

    const/4 v6, 0x1

    aget-object v4, v5, v6

    .line 201
    .local v4, "value":Ljava/lang/Object;
    if-eqz v2, :cond_25

    if-nez v4, :cond_2e

    .line 202
    :cond_25
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2b

    .end local v0    # "contents":[[Ljava/lang/Object;
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    :catchall_2b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 204
    .restart local v0    # "contents":[[Ljava/lang/Object;
    .restart local v1    # "i":I
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2e
    :try_start_2e
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 206
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_34
    iput-object v3, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    monitor-exit p0

    .line 207
    return-void
.end method


# virtual methods
.method protected abstract getContents()[[Ljava/lang/Object;
.end method

.method public getKeys()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v2, :cond_8

    .line 149
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 152
    :cond_8
    iget-object v0, p0, Ljava/util/ListResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 153
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v2, Lsun/util/ResourceBundleEnumeration;

    iget-object v3, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 154
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 153
    :cond_18
    invoke-direct {v2, v3, v1}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    return-object v2
.end method

.method public final handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 130
    invoke-direct {p0}, Ljava/util/ListResourceBundle;->loadLookup()V

    .line 132
    :cond_7
    if-nez p1, :cond_f

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 135
    :cond_f
    iget-object v0, p0, Ljava/util/ListResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
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
