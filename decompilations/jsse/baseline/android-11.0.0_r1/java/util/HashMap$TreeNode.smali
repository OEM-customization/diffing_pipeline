.class final Ljava/util/HashMap$TreeNode;
.super Ljava/util/LinkedHashMap$LinkedHashMapEntry;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap$LinkedHashMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o left:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o parent:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o prev:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o red:Z

.field greylist-max-o right:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1803
    const-class v0, Ljava/util/HashMap;

    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1810
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 1811
    return-void
.end method

.method static greylist-max-o balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2276
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-eqz p1, :cond_ed

    if-ne p1, p0, :cond_6

    goto/16 :goto_ed

    .line 2278
    :cond_6
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 2279
    iput-boolean v2, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2280
    return-object p1

    .line 2282
    :cond_f
    iget-boolean v0, p1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_16

    .line 2283
    iput-boolean v2, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2284
    return-object p0

    .line 2286
    :cond_16
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_86

    .line 2287
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v6, v0

    .local v6, "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_38

    iget-boolean v0, v6, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_38

    .line 2288
    iput-boolean v2, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2289
    iput-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2290
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2291
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_35

    move-object v0, v4

    goto :goto_37

    :cond_35
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_37
    move-object v6, v0

    .line 2293
    :cond_38
    if-nez v6, :cond_3c

    .line 2294
    move-object p1, v1

    goto :goto_0

    .line 2296
    :cond_3c
    iget-object v0, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v0, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2297
    .local v7, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_46

    iget-boolean v8, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_4d

    :cond_46
    if-eqz v0, :cond_81

    iget-boolean v8, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_4d

    goto :goto_81

    .line 2303
    :cond_4d
    if-eqz v7, :cond_53

    iget-boolean v8, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_66

    .line 2304
    :cond_53
    if-eqz v0, :cond_57

    .line 2305
    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2306
    :cond_57
    iput-boolean v5, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2307
    invoke-static {p0, v6}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2308
    iget-object v5, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_63

    .line 2309
    goto :goto_65

    :cond_63
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_65
    move-object v6, v4

    .line 2311
    :cond_66
    if-eqz v6, :cond_77

    .line 2312
    if-nez v1, :cond_6c

    move v4, v2

    goto :goto_6e

    :cond_6c
    iget-boolean v4, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_6e
    iput-boolean v4, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2313
    iget-object v4, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_77

    .line 2314
    iput-boolean v2, v7, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2316
    :cond_77
    if-eqz v1, :cond_7f

    .line 2317
    iput-boolean v2, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2318
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2320
    :cond_7f
    move-object p1, p0

    goto :goto_84

    .line 2299
    :cond_81
    :goto_81
    iput-boolean v5, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2300
    move-object p1, v1

    .line 2322
    .end local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_84
    goto/16 :goto_0

    .line 2325
    .end local v6    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_86
    if-eqz v3, :cond_9e

    iget-boolean v0, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_9e

    .line 2326
    iput-boolean v2, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2327
    iput-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2328
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2329
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_9b

    move-object v0, v4

    goto :goto_9d

    :cond_9b
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_9d
    move-object v3, v0

    .line 2331
    :cond_9e
    if-nez v3, :cond_a3

    .line 2332
    move-object p1, v1

    goto/16 :goto_0

    .line 2334
    :cond_a3
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v6, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2335
    .local v6, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_ad

    iget-boolean v7, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_b4

    :cond_ad
    if-eqz v6, :cond_e8

    iget-boolean v7, v6, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_b4

    goto :goto_e8

    .line 2341
    :cond_b4
    if-eqz v0, :cond_ba

    iget-boolean v7, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_cd

    .line 2342
    :cond_ba
    if-eqz v6, :cond_be

    .line 2343
    iput-boolean v2, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2344
    :cond_be
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2345
    invoke-static {p0, v3}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2346
    iget-object v5, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_ca

    .line 2347
    goto :goto_cc

    :cond_ca
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_cc
    move-object v3, v4

    .line 2349
    :cond_cd
    if-eqz v3, :cond_de

    .line 2350
    if-nez v1, :cond_d3

    move v4, v2

    goto :goto_d5

    :cond_d3
    iget-boolean v4, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_d5
    iput-boolean v4, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2351
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_de

    .line 2352
    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2354
    :cond_de
    if-eqz v1, :cond_e6

    .line 2355
    iput-boolean v2, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2356
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2358
    :cond_e6
    move-object p1, p0

    goto :goto_eb

    .line 2337
    :cond_e8
    :goto_e8
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2338
    move-object p1, v1

    .line 2360
    .end local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_eb
    goto/16 :goto_0

    .line 2277
    .end local v1    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_ed
    :goto_ed
    return-object p0
.end method

.method static greylist-max-o balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2220
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2222
    :cond_3
    :goto_3
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    .local v2, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 2223
    iput-boolean v3, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2224
    return-object p1

    .line 2226
    :cond_c
    iget-boolean v1, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7a

    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v4, v1

    .local v4, "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_17

    goto/16 :goto_7a

    .line 2228
    :cond_17
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v5, v1

    .local v5, "xppl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    if-ne v2, v1, :cond_4d

    .line 2229
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v1

    .local v7, "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_2e

    iget-boolean v1, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_2e

    .line 2230
    iput-boolean v3, v7, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2231
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2232
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2233
    move-object p1, v4

    goto :goto_3

    .line 2236
    :cond_2e
    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne p1, v1, :cond_40

    .line 2237
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2238
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :goto_3f
    move-object v4, v6

    .line 2240
    :cond_40
    if-eqz v2, :cond_3

    .line 2241
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2242
    if-eqz v4, :cond_3

    .line 2243
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2244
    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 2250
    .end local v7    # "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_4d
    if-eqz v5, :cond_5b

    iget-boolean v1, v5, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_5b

    .line 2251
    iput-boolean v3, v5, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2252
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2253
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2254
    move-object p1, v4

    goto :goto_3

    .line 2257
    :cond_5b
    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne p1, v1, :cond_6d

    .line 2258
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2259
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :goto_6c
    move-object v4, v6

    .line 2261
    :cond_6d
    if-eqz v2, :cond_3

    .line 2262
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2263
    if-eqz v4, :cond_3

    .line 2264
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2265
    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 2227
    .end local v4    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xppl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static greylist-max-o checkInvariants(Ljava/util/HashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2369
    .local p0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v0, "tp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2370
    .local v2, "tr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .local v3, "tb":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v4, Ljava/util/HashMap$TreeNode;

    .line 2371
    .local v4, "tn":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-object v6, v3, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    if-eq v6, p0, :cond_14

    .line 2372
    return v5

    .line 2373
    :cond_14
    if-eqz v4, :cond_1b

    iget-object v6, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-eq v6, p0, :cond_1b

    .line 2374
    return v5

    .line 2375
    :cond_1b
    if-eqz v0, :cond_26

    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eq p0, v6, :cond_26

    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eq p0, v6, :cond_26

    .line 2376
    return v5

    .line 2377
    :cond_26
    if-eqz v1, :cond_33

    iget-object v6, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v6, p0, :cond_32

    iget v6, v1, Ljava/util/HashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_33

    .line 2378
    :cond_32
    return v5

    .line 2379
    :cond_33
    if-eqz v2, :cond_40

    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v6, p0, :cond_3f

    iget v6, v2, Ljava/util/HashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_40

    .line 2380
    :cond_3f
    return v5

    .line 2381
    :cond_40
    iget-boolean v6, p0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v2, :cond_51

    iget-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    .line 2382
    return v5

    .line 2383
    :cond_51
    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 2384
    return v5

    .line 2385
    :cond_5a
    if-eqz v2, :cond_63

    invoke-static {v2}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 2386
    return v5

    .line 2387
    :cond_63
    const/4 v5, 0x1

    return v5
.end method

.method static greylist-max-o moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1829
    .local p0, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p1, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_2e

    if-eqz p0, :cond_2e

    array-length v0, p0

    move v1, v0

    .local v1, "n":I
    if-lez v0, :cond_2e

    .line 1830
    add-int/lit8 v0, v1, -0x1

    iget v2, p1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v0, v2

    .line 1831
    .local v0, "index":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/util/HashMap$TreeNode;

    .line 1832
    .local v2, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eq p1, v2, :cond_2e

    .line 1834
    aput-object p1, p0, v0

    .line 1835
    iget-object v3, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1836
    .local v3, "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v4, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    move-object v5, v4

    .local v5, "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_21

    .line 1837
    move-object v4, v5

    check-cast v4, Ljava/util/HashMap$TreeNode;

    iput-object v3, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1838
    :cond_21
    if-eqz v3, :cond_25

    .line 1839
    iput-object v5, v3, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 1840
    :cond_25
    if-eqz v2, :cond_29

    .line 1841
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1842
    :cond_29
    iput-object v2, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 1843
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1847
    .end local v0    # "index":I
    .end local v1    # "n":I
    .end local v2    # "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2e
    return-void
.end method

.method static greylist-max-o rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2185
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 2186
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v2, v0

    .local v2, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 2187
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2188
    :cond_10
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 2189
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_25

    .line 2190
    :cond_1c
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 2191
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_25

    .line 2193
    :cond_23
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2194
    :goto_25
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2195
    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2197
    .end local v1    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2203
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 2204
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v2, v0

    .local v2, "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 2205
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2206
    :cond_10
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 2207
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_25

    .line 2208
    :cond_1c
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 2209
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_25

    .line 2211
    :cond_23
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2212
    :goto_25
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2213
    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2215
    .end local v1    # "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1897
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 1898
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "d":I
    if-nez v0, :cond_29

    .line 1900
    .end local v1    # "d":I
    :cond_1b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_27

    .line 1901
    const/4 v0, -0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    move v1, v0

    .line 1902
    .restart local v1    # "d":I
    :cond_29
    return v1
.end method


# virtual methods
.method final greylist-max-o find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;
    .registers 11
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1855
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 1858
    .local v0, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v2, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 1859
    .local v2, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget v3, v0, Ljava/util/HashMap$TreeNode;->hash:I

    move v4, v3

    .local v4, "ph":I
    if-le v3, p1, :cond_c

    .line 1860
    move-object v0, v1

    goto :goto_46

    .line 1861
    :cond_c
    if-ge v4, p1, :cond_10

    .line 1862
    move-object v0, v2

    goto :goto_46

    .line 1863
    :cond_10
    iget-object v3, v0, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_4a

    if-eqz p2, :cond_1e

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_4a

    .line 1865
    :cond_1e
    if-nez v1, :cond_22

    .line 1866
    move-object v0, v2

    goto :goto_46

    .line 1867
    :cond_22
    if-nez v2, :cond_26

    .line 1868
    move-object v0, v1

    goto :goto_46

    .line 1869
    :cond_26
    if-nez p3, :cond_2f

    .line 1870
    invoke-static {p2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    if-eqz v3, :cond_3d

    .line 1871
    :cond_2f
    invoke-static {p3, p2, v5}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v6, v3

    .local v6, "dir":I
    if-eqz v3, :cond_3d

    .line 1872
    if-gez v6, :cond_3a

    move-object v3, v1

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    :goto_3b
    move-object v0, v3

    goto :goto_46

    .line 1873
    .end local v6    # "dir":I
    :cond_3d
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v3

    move-object v6, v3

    .local v6, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_45

    .line 1874
    return-object v6

    .line 1876
    :cond_45
    move-object v0, v1

    .line 1877
    .end local v1    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    .end local v6    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_46
    if-nez v0, :cond_1

    .line 1878
    const/4 v1, 0x0

    return-object v1

    .line 1864
    .restart local v1    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "ph":I
    .restart local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method final greylist-max-o getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 5
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1885
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p0

    :goto_a
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 16
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;ITK;TV;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1973
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p4, "k":Ljava/lang/Object;, "TK;"
    .local p5, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 1974
    .local v0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1975
    .local v1, "searched":Z
    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v2

    goto :goto_c

    :cond_b
    move-object v2, p0

    .line 1976
    .local v2, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_c
    move-object v3, v2

    .line 1978
    .local v3, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_d
    iget v4, v3, Ljava/util/HashMap$TreeNode;->hash:I

    move v5, v4

    .local v5, "ph":I
    if-le v4, p3, :cond_14

    .line 1979
    const/4 v4, -0x1

    .local v4, "dir":I
    goto :goto_59

    .line 1980
    .end local v4    # "dir":I
    :cond_14
    if-ge v5, p3, :cond_18

    .line 1981
    const/4 v4, 0x1

    .restart local v4    # "dir":I
    goto :goto_59

    .line 1982
    .end local v4    # "dir":I
    :cond_18
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "pk":Ljava/lang/Object;, "TK;"
    if-eq v4, p4, :cond_88

    if-eqz p4, :cond_27

    invoke-virtual {p4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto/16 :goto_88

    .line 1984
    :cond_27
    if-nez v0, :cond_30

    .line 1985
    invoke-static {p4}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_37

    .line 1986
    :cond_30
    invoke-static {v0, p4, v6}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v7, v4

    .local v7, "dir":I
    if-nez v4, :cond_58

    .line 1987
    .end local v7    # "dir":I
    :cond_37
    if-nez v1, :cond_53

    .line 1989
    const/4 v1, 0x1

    .line 1990
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    .local v7, "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_46

    .line 1991
    invoke-virtual {v7, p3, p4, v0}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    move-object v8, v4

    .local v8, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_52

    .end local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_46
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_53

    .line 1993
    invoke-virtual {v7, p3, p4, v0}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    move-object v8, v4

    .restart local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_53

    .line 1994
    :cond_52
    return-object v8

    .line 1996
    .end local v7    # "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_53
    invoke-static {p4, v6}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .restart local v4    # "dir":I
    goto :goto_59

    .line 1986
    .end local v4    # "dir":I
    .local v7, "dir":I
    :cond_58
    move v4, v7

    .line 1999
    .end local v6    # "pk":Ljava/lang/Object;, "TK;"
    .end local v7    # "dir":I
    .restart local v4    # "dir":I
    :goto_59
    move-object v6, v3

    .line 2000
    .local v6, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v4, :cond_5f

    iget-object v7, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_61

    :cond_5f
    iget-object v7, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_61
    move-object v3, v7

    if-nez v7, :cond_87

    .line 2001
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2002
    .local v7, "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-virtual {p1, p3, p4, p5, v7}, Ljava/util/HashMap;->newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v8

    .line 2003
    .local v8, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v4, :cond_6f

    .line 2004
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_71

    .line 2006
    :cond_6f
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2007
    :goto_71
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2008
    iput-object v6, v8, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iput-object v6, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2009
    if-eqz v7, :cond_7e

    .line 2010
    move-object v9, v7

    check-cast v9, Ljava/util/HashMap$TreeNode;

    iput-object v8, v9, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2011
    :cond_7e
    invoke-static {v2, v8}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v9

    invoke-static {p2, v9}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2012
    const/4 v9, 0x0

    return-object v9

    .line 2014
    .end local v4    # "dir":I
    .end local v5    # "ph":I
    .end local v6    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v8    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_87
    goto :goto_d

    .line 1983
    .restart local v5    # "ph":I
    .local v6, "pk":Ljava/lang/Object;, "TK;"
    :cond_88
    :goto_88
    return-object v3
.end method

.method final greylist-max-o removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V
    .registers 22
    .param p3, "movable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 2030
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_11a

    array-length v2, v1

    move v3, v2

    .local v3, "n":I
    if-nez v2, :cond_e

    move-object/from16 v0, p1

    goto/16 :goto_11c

    .line 2032
    :cond_e
    add-int/lit8 v2, v3, -0x1

    iget v4, v0, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v2, v4

    .line 2033
    .local v2, "index":I
    aget-object v4, v1, v2

    check-cast v4, Ljava/util/HashMap$TreeNode;

    .local v4, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v5, v4

    .line 2034
    .local v5, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v6, Ljava/util/HashMap$TreeNode;

    .local v6, "succ":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v7, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2035
    .local v7, "pred":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v7, :cond_24

    .line 2036
    move-object v4, v6

    aput-object v6, v1, v2

    goto :goto_26

    .line 2038
    :cond_24
    iput-object v6, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2039
    :goto_26
    if-eqz v6, :cond_2a

    .line 2040
    iput-object v7, v6, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2041
    :cond_2a
    if-nez v4, :cond_2d

    .line 2042
    return-void

    .line 2043
    :cond_2d
    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_35

    .line 2044
    invoke-virtual {v5}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v5

    .line 2045
    :cond_35
    if-eqz v5, :cond_10d

    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_10d

    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v9, v8

    .local v9, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_108

    iget-object v8, v9, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_4a

    move/from16 v16, v3

    move-object/from16 v17, v5

    goto/16 :goto_111

    .line 2050
    :cond_4a
    move-object/from16 v8, p0

    .local v8, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v10, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v10, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v11, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2051
    .local v11, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_b5

    if-eqz v11, :cond_b5

    .line 2052
    move-object v13, v11

    .line 2053
    .local v13, "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_55
    iget-object v14, v13, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v15, v14

    .local v15, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_5c

    .line 2054
    move-object v13, v15

    goto :goto_55

    .line 2055
    :cond_5c
    iget-boolean v14, v13, Ljava/util/HashMap$TreeNode;->red:Z

    .local v14, "c":Z
    iget-boolean v12, v8, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v12, v13, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v14, v8, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2056
    iget-object v12, v13, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2057
    .local v12, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2058
    .local v0, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-ne v13, v11, :cond_73

    .line 2059
    iput-object v13, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2060
    iput-object v8, v13, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move/from16 v16, v3

    move-object/from16 v17, v5

    goto :goto_8f

    .line 2063
    :cond_73
    move/from16 v16, v3

    .end local v3    # "n":I
    .local v16, "n":I
    iget-object v3, v13, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2064
    .local v3, "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iput-object v3, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v3, :cond_87

    .line 2065
    move-object/from16 v17, v5

    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v17, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v5, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v13, v5, :cond_84

    .line 2066
    iput-object v8, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_89

    .line 2068
    :cond_84
    iput-object v8, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_89

    .line 2064
    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_87
    move-object/from16 v17, v5

    .line 2070
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_89
    iput-object v11, v13, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v11, :cond_8f

    .line 2071
    iput-object v13, v11, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2073
    .end local v3    # "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_8f
    :goto_8f
    const/4 v3, 0x0

    iput-object v3, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2074
    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v12, :cond_98

    .line 2075
    iput-object v8, v12, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2076
    :cond_98
    iput-object v10, v13, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v10, :cond_9e

    .line 2077
    iput-object v13, v10, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2078
    :cond_9e
    iput-object v0, v13, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_a4

    .line 2079
    move-object v5, v13

    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_af

    .line 2080
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_a4
    iget-object v3, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v3, :cond_ab

    .line 2081
    iput-object v13, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_ad

    .line 2083
    :cond_ab
    iput-object v13, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2084
    :goto_ad
    move-object/from16 v5, v17

    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_af
    if-eqz v12, :cond_b3

    .line 2085
    move-object v3, v12

    .local v3, "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_b4

    .line 2087
    .end local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_b3
    move-object v3, v8

    .line 2088
    .end local v0    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v13    # "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v14    # "c":Z
    .end local v15    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_b4
    goto :goto_c8

    .line 2051
    .end local v16    # "n":I
    .local v3, "n":I
    :cond_b5
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 2089
    .end local v3    # "n":I
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "n":I
    .restart local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_bf

    .line 2090
    move-object v3, v10

    move-object/from16 v5, v17

    .local v3, "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_c8

    .line 2091
    .end local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_bf
    if-eqz v11, :cond_c5

    .line 2092
    move-object v3, v11

    move-object/from16 v5, v17

    .restart local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_c8

    .line 2094
    .end local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_c5
    move-object v3, v8

    move-object/from16 v5, v17

    .line 2095
    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_c8
    if-eq v3, v8, :cond_e2

    .line 2096
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v3, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2097
    .restart local v0    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_d2

    .line 2098
    move-object v5, v3

    goto :goto_db

    .line 2099
    :cond_d2
    iget-object v12, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v12, :cond_d9

    .line 2100
    iput-object v3, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_db

    .line 2102
    :cond_d9
    iput-object v3, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2103
    :goto_db
    const/4 v12, 0x0

    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2106
    .end local v0    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_e2
    iget-boolean v0, v8, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_e8

    move-object v0, v5

    goto :goto_ec

    :cond_e8
    invoke-static {v5, v3}, Ljava/util/HashMap$TreeNode;->balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    .line 2108
    .local v0, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_ec
    if-ne v3, v8, :cond_102

    .line 2109
    iget-object v12, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2110
    .local v12, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v13, 0x0

    iput-object v13, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2111
    if-eqz v12, :cond_102

    .line 2112
    iget-object v14, v12, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v14, :cond_fc

    .line 2113
    iput-object v13, v12, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_102

    .line 2114
    :cond_fc
    iget-object v14, v12, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v8, v14, :cond_102

    .line 2115
    iput-object v13, v12, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2118
    .end local v12    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_102
    :goto_102
    if-eqz p3, :cond_107

    .line 2119
    invoke-static {v1, v0}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2120
    :cond_107
    return-void

    .line 2045
    .end local v0    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v10    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v11    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "n":I
    .local v3, "n":I
    :cond_108
    move/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "n":I
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "n":I
    .restart local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_111

    .end local v9    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "n":I
    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "n":I
    .restart local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_10d
    move/from16 v16, v3

    move-object/from16 v17, v5

    .line 2047
    .end local v3    # "n":I
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "n":I
    .restart local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_111
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2048
    return-void

    .line 2030
    .end local v2    # "index":I
    .end local v4    # "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "succ":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "pred":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "n":I
    .end local v17    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_11a
    move-object/from16 v0, p1

    .line 2031
    :goto_11c
    return-void
.end method

.method final greylist-max-o root()Ljava/util/HashMap$TreeNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1817
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v0, p0

    .line 1818
    .local v0, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    .local v2, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_7

    .line 1819
    return-object v0

    .line 1820
    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method final greylist-max-o split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V
    .registers 15
    .param p3, "index"    # I
    .param p4, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 2133
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p0

    .line 2135
    .local v0, "b":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "loHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 2136
    .local v2, "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "hiHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 2137
    .local v4, "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "lc":I
    const/4 v6, 0x0

    .line 2138
    .local v6, "hc":I
    move-object v7, v0

    .local v7, "e":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_8
    if-eqz v7, :cond_2f

    .line 2139
    iget-object v8, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v8, Ljava/util/HashMap$TreeNode;

    .line 2140
    .local v8, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v9, 0x0

    iput-object v9, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2141
    iget v9, v7, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v9, p4

    if-nez v9, :cond_22

    .line 2142
    iput-object v2, v7, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_1c

    .line 2143
    move-object v1, v7

    goto :goto_1e

    .line 2145
    :cond_1c
    iput-object v7, v2, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2146
    :goto_1e
    move-object v2, v7

    .line 2147
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 2150
    :cond_22
    iput-object v4, v7, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v4, :cond_28

    .line 2151
    move-object v3, v7

    goto :goto_2a

    .line 2153
    :cond_28
    iput-object v7, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2154
    :goto_2a
    move-object v4, v7

    .line 2155
    add-int/lit8 v6, v6, 0x1

    .line 2138
    :goto_2d
    move-object v7, v8

    goto :goto_8

    .line 2159
    .end local v7    # "e":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    const/4 v7, 0x6

    if-eqz v1, :cond_42

    .line 2160
    if-gt v5, v7, :cond_3b

    .line 2161
    invoke-virtual {v1, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v8

    aput-object v8, p2, p3

    goto :goto_42

    .line 2163
    :cond_3b
    aput-object v1, p2, p3

    .line 2164
    if-eqz v3, :cond_42

    .line 2165
    invoke-virtual {v1, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    .line 2168
    :cond_42
    :goto_42
    if-eqz v3, :cond_58

    .line 2169
    if-gt v6, v7, :cond_4f

    .line 2170
    add-int v7, p3, p4

    invoke-virtual {v3, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v8

    aput-object v8, p2, v7

    goto :goto_58

    .line 2172
    :cond_4f
    add-int v7, p3, p4

    aput-object v3, p2, v7

    .line 2173
    if-eqz v1, :cond_58

    .line 2174
    invoke-virtual {v3, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    .line 2177
    :cond_58
    :goto_58
    return-void
.end method

.method final greylist-max-o treeify([Ljava/util/HashMap$Node;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1910
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 1911
    .local v0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v1, p0

    .local v1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_2
    if-eqz v1, :cond_5b

    .line 1912
    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v2, Ljava/util/HashMap$TreeNode;

    .line 1913
    .local v2, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 1914
    if-nez v0, :cond_16

    .line 1915
    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 1916
    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 1917
    move-object v0, v1

    goto :goto_58

    .line 1920
    :cond_16
    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 1921
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget v4, v1, Ljava/util/HashMap$TreeNode;->hash:I

    .line 1922
    .local v4, "h":I
    const/4 v5, 0x0

    .line 1923
    .local v5, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    .line 1925
    .local v6, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1c
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 1926
    .local v7, "pk":Ljava/lang/Object;, "TK;"
    iget v8, v6, Ljava/util/HashMap$TreeNode;->hash:I

    move v9, v8

    .local v9, "ph":I
    if-le v8, v4, :cond_25

    .line 1927
    const/4 v8, -0x1

    .local v8, "dir":I
    goto :goto_3f

    .line 1928
    .end local v8    # "dir":I
    :cond_25
    if-ge v9, v4, :cond_29

    .line 1929
    const/4 v8, 0x1

    .restart local v8    # "dir":I
    goto :goto_3f

    .line 1930
    .end local v8    # "dir":I
    :cond_29
    if-nez v5, :cond_32

    .line 1931
    invoke-static {v3}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    if-eqz v8, :cond_39

    .line 1932
    :cond_32
    invoke-static {v5, v3, v7}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v10, v8

    .local v10, "dir":I
    if-nez v8, :cond_3e

    .line 1933
    .end local v10    # "dir":I
    :cond_39
    invoke-static {v3, v7}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .restart local v8    # "dir":I
    goto :goto_3f

    .line 1932
    .end local v8    # "dir":I
    .restart local v10    # "dir":I
    :cond_3e
    move v8, v10

    .line 1935
    .end local v10    # "dir":I
    .restart local v8    # "dir":I
    :goto_3f
    move-object v10, v6

    .line 1936
    .local v10, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v8, :cond_45

    iget-object v11, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_47

    :cond_45
    iget-object v11, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_47
    move-object v6, v11

    if-nez v11, :cond_5a

    .line 1937
    iput-object v10, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 1938
    if-gtz v8, :cond_51

    .line 1939
    iput-object v1, v10, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_53

    .line 1941
    :cond_51
    iput-object v1, v10, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 1942
    :goto_53
    invoke-static {v0, v1}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    .line 1943
    nop

    .line 1911
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "h":I
    .end local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "pk":Ljava/lang/Object;, "TK;"
    .end local v8    # "dir":I
    .end local v9    # "ph":I
    .end local v10    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_58
    move-object v1, v2

    goto :goto_2

    .line 1945
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    .restart local v4    # "h":I
    .restart local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_5a
    goto :goto_1c

    .line 1948
    .end local v1    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "h":I
    .end local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_5b
    invoke-static {p1, v0}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 1949
    return-void
.end method

.method final greylist-max-o untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1956
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 1957
    .local v1, "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_14

    .line 1958
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    .line 1959
    .local v3, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    .line 1960
    move-object v0, v3

    goto :goto_10

    .line 1962
    :cond_e
    iput-object v3, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 1963
    :goto_10
    move-object v1, v3

    .line 1957
    .end local v3    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_3

    .line 1965
    .end local v2    # "q":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_14
    return-object v0
.end method
