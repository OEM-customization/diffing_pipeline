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
        "Ljava/util/LinkedHashMap$LinkedHashMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field left:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field parent:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field prev:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field red:Z

.field right:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/HashMap$TreeNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/HashMap$TreeNode;->-assertionsDisabled:Z

    .line 1803
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1810
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$LinkedHashMapEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 1811
    return-void
.end method

.method static balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2276
    :goto_2
    if-eqz p1, :cond_6

    if-ne p1, p0, :cond_7

    .line 2277
    :cond_6
    return-object p0

    .line 2278
    :cond_7
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v2, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_e

    .line 2279
    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2280
    return-object p1

    .line 2282
    :cond_e
    iget-boolean v5, p1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_15

    .line 2283
    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2284
    return-object p0

    .line 2286
    :cond_15
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v3, "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-ne v3, p1, :cond_81

    .line 2287
    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .local v4, "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_2e

    iget-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_2e

    .line 2288
    iput-boolean v6, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2289
    iput-boolean v7, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2290
    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2291
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_32

    const/4 v4, 0x0

    .line 2293
    .end local v4    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2e
    :goto_2e
    if-nez v4, :cond_35

    .line 2294
    move-object p1, v2

    goto :goto_2

    .line 2291
    .restart local v4    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_32
    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_2e

    .line 2296
    .end local v4    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_35
    iget-object v0, v4, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v0, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2297
    .local v1, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_41

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4d

    .line 2298
    :cond_41
    if-eqz v0, :cond_49

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    .line 2297
    if-eqz v5, :cond_4d

    .line 2299
    :cond_49
    iput-boolean v7, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2300
    move-object p1, v2

    goto :goto_2

    .line 2303
    :cond_4d
    if-eqz v1, :cond_55

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_64

    .line 2304
    :cond_55
    if-eqz v0, :cond_59

    .line 2305
    iput-boolean v6, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2306
    :cond_59
    iput-boolean v7, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2307
    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2308
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_7b

    .line 2309
    const/4 v4, 0x0

    .line 2311
    :cond_64
    :goto_64
    if-eqz v4, :cond_71

    .line 2312
    if-nez v2, :cond_7e

    move v5, v6

    :goto_69
    iput-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2313
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v1, :cond_71

    .line 2314
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2316
    :cond_71
    if-eqz v2, :cond_79

    .line 2317
    iput-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2318
    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2320
    :cond_79
    move-object p1, p0

    goto :goto_2

    .line 2309
    :cond_7b
    iget-object v4, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .restart local v4    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_64

    .line 2312
    .end local v4    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_7e
    iget-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_69

    .line 2325
    .end local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_81
    if-eqz v3, :cond_94

    iget-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_94

    .line 2326
    iput-boolean v6, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2327
    iput-boolean v7, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2328
    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2329
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_99

    const/4 v3, 0x0

    .line 2331
    .end local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_94
    :goto_94
    if-nez v3, :cond_9c

    .line 2332
    move-object p1, v2

    goto/16 :goto_2

    .line 2329
    .restart local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_99
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_94

    .line 2334
    .end local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_9c
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2335
    .restart local v1    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_a8

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b5

    .line 2336
    :cond_a8
    if-eqz v1, :cond_b0

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    .line 2335
    if-eqz v5, :cond_b5

    .line 2337
    :cond_b0
    iput-boolean v7, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2338
    move-object p1, v2

    goto/16 :goto_2

    .line 2341
    :cond_b5
    if-eqz v0, :cond_bd

    iget-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_cc

    .line 2342
    :cond_bd
    if-eqz v1, :cond_c1

    .line 2343
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2344
    :cond_c1
    iput-boolean v7, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2345
    invoke-static {p0, v3}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2346
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_e4

    .line 2347
    const/4 v3, 0x0

    .line 2349
    :cond_cc
    :goto_cc
    if-eqz v3, :cond_d9

    .line 2350
    if-nez v2, :cond_e7

    move v5, v6

    :goto_d1
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2351
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_d9

    .line 2352
    iput-boolean v6, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2354
    :cond_d9
    if-eqz v2, :cond_e1

    .line 2355
    iput-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2356
    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2358
    :cond_e1
    move-object p1, p0

    goto/16 :goto_2

    .line 2347
    :cond_e4
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .restart local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_cc

    .line 2350
    .end local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_e7
    iget-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_d1
.end method

.method static balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2220
    iput-boolean v6, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2222
    :cond_4
    :goto_4
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v0, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_b

    .line 2223
    iput-boolean v5, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2224
    return-object p1

    .line 2226
    :cond_b
    iget-boolean v4, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_13

    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v1, "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_14

    .line 2227
    .end local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_13
    return-object p0

    .line 2228
    .restart local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_14
    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v2, "xppl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-ne v0, v2, :cond_46

    .line 2229
    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .local v3, "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_28

    iget-boolean v4, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_28

    .line 2230
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2231
    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2232
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2233
    move-object p1, v1

    goto :goto_4

    .line 2236
    :cond_28
    iget-object v4, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne p1, v4, :cond_36

    .line 2237
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2238
    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_43

    const/4 v1, 0x0

    .line 2240
    .end local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_36
    :goto_36
    if-eqz v0, :cond_4

    .line 2241
    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2242
    if-eqz v1, :cond_4

    .line 2243
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2244
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_4

    .line 2238
    .restart local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_43
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto :goto_36

    .line 2250
    .end local v3    # "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_46
    if-eqz v2, :cond_54

    iget-boolean v4, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v4, :cond_54

    .line 2251
    iput-boolean v5, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2252
    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2253
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2254
    move-object p1, v1

    goto :goto_4

    .line 2257
    :cond_54
    iget-object v4, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne p1, v4, :cond_62

    .line 2258
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2259
    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v0, :cond_6f

    const/4 v1, 0x0

    .line 2261
    .end local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_62
    :goto_62
    if-eqz v0, :cond_4

    .line 2262
    iput-boolean v5, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2263
    if-eqz v1, :cond_4

    .line 2264
    iput-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2265
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_4

    .line 2259
    .restart local v1    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_6f
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto :goto_62
.end method

.method static checkInvariants(Ljava/util/HashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    .line 2369
    iget-object v3, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v3, "tp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2370
    .local v4, "tr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .local v0, "tb":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v2, Ljava/util/HashMap$TreeNode;

    .line 2371
    .local v2, "tn":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_14

    iget-object v5, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    if-eq v5, p0, :cond_14

    .line 2372
    return v7

    .line 2373
    :cond_14
    if-eqz v2, :cond_1b

    iget-object v5, v2, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-eq v5, p0, :cond_1b

    .line 2374
    return v7

    .line 2375
    :cond_1b
    if-eqz v3, :cond_26

    iget-object v5, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eq p0, v5, :cond_26

    iget-object v5, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eq p0, v5, :cond_26

    .line 2376
    return v7

    .line 2377
    :cond_26
    if-eqz v1, :cond_33

    iget-object v5, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v5, p0, :cond_32

    iget v5, v1, Ljava/util/HashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v5, v6, :cond_33

    .line 2378
    :cond_32
    return v7

    .line 2379
    :cond_33
    if-eqz v4, :cond_40

    iget-object v5, v4, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v5, p0, :cond_3f

    iget v5, v4, Ljava/util/HashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-ge v5, v6, :cond_40

    .line 2380
    :cond_3f
    return v7

    .line 2381
    :cond_40
    iget-boolean v5, p0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    if-eqz v4, :cond_51

    iget-boolean v5, v4, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    .line 2382
    return v7

    .line 2383
    :cond_51
    if-eqz v1, :cond_5c

    invoke-static {v1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5c

    .line 2384
    return v7

    .line 2385
    :cond_5c
    if-eqz v4, :cond_67

    invoke-static {v4}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_67

    .line 2386
    return v7

    .line 2387
    :cond_67
    const/4 v5, 0x1

    return v5
.end method

.method static moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p1, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    .line 1829
    if-eqz p1, :cond_3d

    if-eqz p0, :cond_3d

    array-length v2, p0

    .local v2, "n":I
    if-lez v2, :cond_3d

    .line 1830
    add-int/lit8 v5, v2, -0x1

    iget v6, p1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int v1, v5, v6

    .line 1831
    .local v1, "index":I
    aget-object v0, p0, v1

    check-cast v0, Ljava/util/HashMap$TreeNode;

    .line 1832
    .local v0, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eq p1, v0, :cond_2d

    .line 1834
    aput-object p1, p0, v1

    .line 1835
    iget-object v4, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1836
    .local v4, "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .local v3, "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v3, :cond_21

    move-object v5, v3

    .line 1837
    check-cast v5, Ljava/util/HashMap$TreeNode;

    iput-object v4, v5, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1838
    :cond_21
    if-eqz v4, :cond_25

    .line 1839
    iput-object v3, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 1840
    :cond_25
    if-eqz v0, :cond_29

    .line 1841
    iput-object p1, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1842
    :cond_29
    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 1843
    iput-object v7, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1845
    .end local v3    # "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v4    # "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2d
    sget-boolean v5, Ljava/util/HashMap$TreeNode;->-assertionsDisabled:Z

    if-nez v5, :cond_3d

    invoke-static {p1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v5

    if-nez v5, :cond_3d

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1847
    .end local v0    # "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "index":I
    .end local v2    # "n":I
    :cond_3d
    return-void
.end method

.method static rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2185
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1c

    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .local v1, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_1c

    .line 2186
    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iput-object v2, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .local v2, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_e

    .line 2187
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2188
    :cond_e
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v0, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1d

    .line 2189
    move-object p0, v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2194
    :goto_18
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2195
    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2197
    .end local v0    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1c
    return-object p0

    .line 2190
    .restart local v0    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v3, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v3, p1, :cond_24

    .line 2191
    iput-object v1, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_18

    .line 2193
    :cond_24
    iput-object v1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_18
.end method

.method static rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2203
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1c

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v0, "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_1c

    .line 2204
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_e

    .line 2205
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2206
    :cond_e
    iget-object v2, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v2, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v2, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_1d

    .line 2207
    move-object p0, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2212
    :goto_18
    iput-object p1, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2213
    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2215
    .end local v0    # "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v1    # "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1c
    return-object p0

    .line 2208
    .restart local v0    # "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v3, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v3, p1, :cond_24

    .line 2209
    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_18

    .line 2211
    :cond_24
    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_18
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 1897
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 1900
    :cond_4
    :goto_4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-gt v1, v2, :cond_27

    .line 1901
    const/4 v0, -0x1

    .line 1902
    .local v0, "d":I
    :cond_f
    :goto_f
    return v0

    .line 1898
    .end local v0    # "d":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1899
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1898
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "d":I
    if-nez v0, :cond_f

    goto :goto_4

    .line 1901
    .end local v0    # "d":I
    :cond_27
    const/4 v0, 0x1

    .restart local v0    # "d":I
    goto :goto_f
.end method


# virtual methods
.method final find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;
    .registers 13
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 1855
    move-object v1, p0

    .line 1858
    .local v1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v4, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v5, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 1859
    .local v5, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget v2, v1, Ljava/util/HashMap$TreeNode;->hash:I

    .local v2, "ph":I
    if-le v2, p1, :cond_e

    .line 1860
    move-object v1, v4

    .line 1877
    :goto_b
    if-nez v1, :cond_2

    .line 1878
    return-object v8

    .line 1861
    :cond_e
    if-ge v2, p1, :cond_12

    .line 1862
    move-object v1, v5

    goto :goto_b

    .line 1863
    :cond_12
    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .local v3, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_1e

    if-eqz p2, :cond_1f

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1864
    :cond_1e
    return-object v1

    .line 1865
    :cond_1f
    if-nez v4, :cond_23

    .line 1866
    move-object v1, v5

    goto :goto_b

    .line 1867
    :cond_23
    if-nez v5, :cond_27

    .line 1868
    move-object v1, v4

    goto :goto_b

    .line 1869
    :cond_27
    if-nez p3, :cond_2f

    .line 1870
    invoke-static {p2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 1871
    :cond_2f
    invoke-static {p3, p2, v3}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .local v0, "dir":I
    if-eqz v0, :cond_3b

    .line 1872
    if-gez v0, :cond_39

    move-object v1, v4

    goto :goto_b

    :cond_39
    move-object v1, v5

    goto :goto_b

    .line 1873
    .end local v0    # "dir":I
    :cond_3b
    invoke-virtual {v5, p1, p2, p3}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v6

    .local v6, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v6, :cond_42

    .line 1874
    return-object v6

    .line 1876
    :cond_42
    move-object v1, v4

    goto :goto_b
.end method

.method final getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 5
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v1, 0x0

    .line 1885
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .end local p0    # "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_9
    invoke-virtual {p0, p1, p2, v1}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 23
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;ITK;TV;)",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p4, "k":Ljava/lang/Object;, "TK;"
    .local p5, "v":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x0

    .line 1974
    .local v6, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 1975
    .local v12, "searched":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v16, v0

    if-eqz v16, :cond_49

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v11

    .line 1976
    .local v11, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_e
    move-object v7, v11

    .line 1978
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_f
    iget v8, v7, Ljava/util/HashMap$TreeNode;->hash:I

    .local v8, "ph":I
    move/from16 v0, p3

    if-le v8, v0, :cond_4c

    .line 1979
    const/4 v5, -0x1

    .line 1999
    .local v5, "dir":I
    :cond_16
    :goto_16
    move-object v14, v7

    .line 2000
    .local v14, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v5, :cond_9c

    iget-object v7, v7, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_1b
    if-nez v7, :cond_f

    .line 2001
    iget-object v15, v14, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2002
    .local v15, "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v15}, Ljava/util/HashMap;->newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v13

    .line 2003
    .local v13, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v5, :cond_a0

    .line 2004
    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2007
    :goto_2f
    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2008
    iput-object v14, v13, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iput-object v14, v13, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2009
    if-eqz v15, :cond_3b

    .line 2010
    check-cast v15, Ljava/util/HashMap$TreeNode;

    .end local v15    # "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iput-object v13, v15, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2011
    :cond_3b
    invoke-static {v11, v13}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2012
    const/16 v16, 0x0

    return-object v16

    .line 1975
    .end local v5    # "dir":I
    .end local v7    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "ph":I
    .end local v11    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v13    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v14    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    move-object/from16 v11, p0

    .restart local v11    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_e

    .line 1980
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v8    # "ph":I
    :cond_4c
    move/from16 v0, p3

    if-ge v8, v0, :cond_52

    .line 1981
    const/4 v5, 0x1

    .restart local v5    # "dir":I
    goto :goto_16

    .line 1982
    .end local v5    # "dir":I
    :cond_52
    iget-object v9, v7, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .local v9, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p4

    if-eq v9, v0, :cond_62

    if-eqz p4, :cond_63

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_63

    .line 1983
    :cond_62
    return-object v7

    .line 1984
    :cond_63
    if-nez v6, :cond_7d

    .line 1985
    invoke-static/range {p4 .. p4}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    .local v6, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_7d

    .line 1987
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_6b
    if-nez v12, :cond_94

    .line 1989
    const/4 v12, 0x1

    .line 1990
    iget-object v4, v7, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v4, "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_86

    .line 1991
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v10

    .local v10, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_86

    .line 1994
    :cond_7c
    return-object v10

    .line 1986
    .end local v4    # "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v10    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_7d
    move-object/from16 v0, p4

    invoke-static {v6, v0, v9}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .restart local v5    # "dir":I
    if-nez v5, :cond_16

    goto :goto_6b

    .line 1992
    .end local v5    # "dir":I
    .restart local v4    # "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_86
    iget-object v4, v7, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v4, :cond_94

    .line 1993
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v10

    .restart local v10    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v10, :cond_7c

    .line 1996
    .end local v4    # "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v10    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_94
    move-object/from16 v0, p4

    invoke-static {v0, v9}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .restart local v5    # "dir":I
    goto/16 :goto_16

    .line 2000
    .end local v9    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v14    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_9c
    iget-object v7, v7, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_1b

    .line 2006
    .restart local v13    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v15    # "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_a0
    iput-object v13, v14, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_2f
.end method

.method final removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V
    .registers 26
    .param p3, "movable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2030
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    array-length v5, v0

    .local v5, "n":I
    if-nez v5, :cond_8

    .line 2031
    .end local v5    # "n":I
    :cond_7
    return-void

    .line 2032
    .restart local v5    # "n":I
    :cond_8
    add-int/lit8 v20, v5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/HashMap$TreeNode;->hash:I

    move/from16 v21, v0

    and-int v4, v20, v21

    .line 2033
    .local v4, "index":I
    aget-object v3, p2, v4

    check-cast v3, Ljava/util/HashMap$TreeNode;

    .local v3, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v14, v3

    .line 2034
    .local v14, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/HashMap$TreeNode;

    .local v19, "succ":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2035
    .local v10, "pred":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v10, :cond_32

    .line 2036
    move-object/from16 v3, v19

    aput-object v19, p2, v4

    .line 2039
    :goto_29
    if-eqz v19, :cond_2f

    .line 2040
    move-object/from16 v0, v19

    iput-object v10, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2041
    :cond_2f
    if-nez v3, :cond_37

    .line 2042
    return-void

    .line 2038
    :cond_32
    move-object/from16 v0, v19

    iput-object v0, v10, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_29

    .line 2043
    :cond_37
    iget-object v0, v14, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_41

    .line 2044
    invoke-virtual {v14}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v14

    .line 2045
    :cond_41
    if-eqz v14, :cond_49

    iget-object v0, v14, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-nez v20, :cond_52

    .line 2047
    :cond_49
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v20

    aput-object v20, p2, v4

    .line 2048
    return-void

    .line 2046
    :cond_52
    iget-object v13, v14, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v13, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_49

    iget-object v0, v13, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    if-eqz v20, :cond_49

    .line 2050
    move-object/from16 v6, p0

    .local v6, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v7, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2051
    .local v9, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_154

    if-eqz v9, :cond_154

    .line 2052
    move-object v15, v9

    .line 2053
    .local v15, "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_6b
    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v16, v0

    .local v16, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v16, :cond_74

    .line 2054
    move-object/from16 v15, v16

    goto :goto_6b

    .line 2055
    :cond_74
    iget-boolean v2, v15, Ljava/util/HashMap$TreeNode;->red:Z

    .local v2, "c":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/HashMap$TreeNode;->red:Z

    move/from16 v20, v0

    move/from16 v0, v20

    iput-boolean v0, v15, Ljava/util/HashMap$TreeNode;->red:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2056
    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v18, v0

    .line 2057
    .local v18, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2058
    .local v8, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-ne v15, v9, :cond_113

    .line 2059
    move-object/from16 v0, p0

    iput-object v15, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2060
    move-object/from16 v0, p0

    iput-object v0, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2073
    :cond_96
    :goto_96
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2074
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v18, :cond_ac

    .line 2075
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2076
    :cond_ac
    iput-object v7, v15, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v7, :cond_b2

    .line 2077
    iput-object v15, v7, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2078
    :cond_b2
    iput-object v8, v15, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_13e

    .line 2079
    move-object v14, v15

    .line 2084
    :goto_b7
    if-eqz v18, :cond_150

    .line 2085
    move-object/from16 v12, v18

    .line 2095
    .end local v2    # "c":Z
    .end local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v15    # "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v18    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v12, "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_bb
    move-object/from16 v0, p0

    if-eq v12, v0, :cond_e0

    .line 2096
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v8, v12, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2097
    .restart local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v8, :cond_162

    .line 2098
    move-object v14, v12

    .line 2103
    :goto_c8
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2106
    .end local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_e0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/util/HashMap$TreeNode;->red:Z

    move/from16 v20, v0

    if-eqz v20, :cond_174

    move-object v11, v14

    .line 2108
    .local v11, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_e9
    move-object/from16 v0, p0

    if-ne v12, v0, :cond_10b

    .line 2109
    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2110
    .restart local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2111
    if-eqz v8, :cond_10b

    .line 2112
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_17a

    .line 2113
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2118
    .end local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_10b
    :goto_10b
    if-eqz p3, :cond_112

    .line 2119
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2120
    :cond_112
    return-void

    .line 2063
    .end local v11    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "c":Z
    .restart local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v15    # "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v16    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v18    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_113
    iget-object v0, v15, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object/from16 v17, v0

    .line 2064
    .local v17, "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v17, :cond_12f

    .line 2065
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v15, v0, :cond_137

    .line 2066
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2070
    :cond_12f
    :goto_12f
    iput-object v9, v15, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v9, :cond_96

    .line 2071
    iput-object v15, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_96

    .line 2068
    :cond_137
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_12f

    .line 2080
    .end local v17    # "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_13e
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14c

    .line 2081
    iput-object v15, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_b7

    .line 2083
    :cond_14c
    iput-object v15, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_b7

    .line 2087
    :cond_150
    move-object/from16 v12, p0

    .restart local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto/16 :goto_bb

    .line 2089
    .end local v2    # "c":Z
    .end local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v15    # "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v18    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_154
    if-eqz v7, :cond_159

    .line 2090
    move-object v12, v7

    .restart local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto/16 :goto_bb

    .line 2091
    .end local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_159
    if-eqz v9, :cond_15e

    .line 2092
    move-object v12, v9

    .restart local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto/16 :goto_bb

    .line 2094
    .end local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_15e
    move-object/from16 v12, p0

    .restart local v12    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto/16 :goto_bb

    .line 2099
    .restart local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_162
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_170

    .line 2100
    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_c8

    .line 2102
    :cond_170
    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto/16 :goto_c8

    .line 2106
    .end local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_174
    invoke-static {v14, v12}, Ljava/util/HashMap$TreeNode;->balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v11

    .restart local v11    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto/16 :goto_e9

    .line 2114
    .restart local v8    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_17a
    iget-object v0, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_10b

    .line 2115
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_10b
.end method

.method final root()Ljava/util/HashMap$TreeNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1817
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v1, p0

    .line 1818
    .local v1, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v0, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_6

    .line 1819
    return-object v1

    .line 1820
    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method final split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V
    .registers 16
    .param p3, "index"    # I
    .param p4, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;[",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 2133
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p0

    .line 2135
    .local v0, "b":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    .local v6, "loHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    .line 2136
    .local v7, "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "hiHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 2137
    .local v4, "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "lc":I
    const/4 v2, 0x0

    .line 2138
    .local v2, "hc":I
    move-object v1, p0

    .end local v3    # "hiHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v4    # "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "loHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v1, "e":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_8
    if-eqz v1, :cond_2f

    .line 2139
    iget-object v8, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v8, Ljava/util/HashMap$TreeNode;

    .line 2140
    .local v8, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v9, 0x0

    iput-object v9, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2141
    iget v9, v1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v9, p4

    if-nez v9, :cond_23

    .line 2142
    iput-object v7, v1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v7, :cond_20

    .line 2143
    move-object v6, v1

    .line 2146
    :goto_1b
    move-object v7, v1

    .line 2147
    .local v7, "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v5, v5, 0x1

    .line 2138
    .end local v7    # "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1e
    move-object v1, v8

    goto :goto_8

    .line 2145
    :cond_20
    iput-object v1, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_1b

    .line 2150
    :cond_23
    iput-object v4, v1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v4, :cond_2c

    .line 2151
    move-object v3, v1

    .line 2154
    :goto_28
    move-object v4, v1

    .line 2155
    .local v4, "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2153
    .end local v4    # "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2c
    iput-object v1, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    goto :goto_28

    .line 2159
    .end local v8    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    if-eqz v6, :cond_3a

    .line 2160
    const/4 v9, 0x6

    if-gt v5, v9, :cond_48

    .line 2161
    invoke-virtual {v6, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v9

    aput-object v9, p2, p3

    .line 2168
    :cond_3a
    :goto_3a
    if-eqz v3, :cond_47

    .line 2169
    const/4 v9, 0x6

    if-gt v2, v9, :cond_50

    .line 2170
    add-int v9, p3, p4

    invoke-virtual {v3, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v10

    aput-object v10, p2, v9

    .line 2177
    :cond_47
    :goto_47
    return-void

    .line 2163
    :cond_48
    aput-object v6, p2, p3

    .line 2164
    if-eqz v3, :cond_3a

    .line 2165
    invoke-virtual {v6, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_3a

    .line 2172
    :cond_50
    add-int v9, p3, p4

    aput-object v3, p2, v9

    .line 2173
    if-eqz v6, :cond_47

    .line 2174
    invoke-virtual {v3, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    goto :goto_47
.end method

.method final treeify([Ljava/util/HashMap$Node;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1910
    const/4 v8, 0x0

    .line 1911
    .local v8, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v9, p0

    .end local v8    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v9, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_4
    if-eqz v9, :cond_54

    .line 1912
    iget-object v4, v9, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v4, Ljava/util/HashMap$TreeNode;

    .line 1913
    .local v4, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 1914
    if-nez v8, :cond_17

    .line 1915
    iput-object v11, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 1916
    iput-boolean v12, v9, Ljava/util/HashMap$TreeNode;->red:Z

    .line 1917
    move-object v8, v9

    .line 1911
    .local v8, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_15
    move-object v9, v4

    goto :goto_4

    .line 1920
    .end local v8    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_17
    iget-object v2, v9, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 1921
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget v1, v9, Ljava/util/HashMap$TreeNode;->hash:I

    .line 1922
    .local v1, "h":I
    const/4 v3, 0x0

    .line 1923
    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v8

    .line 1925
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v7, v5, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 1926
    .local v7, "pk":Ljava/lang/Object;, "TK;"
    iget v6, v5, Ljava/util/HashMap$TreeNode;->hash:I

    .local v6, "ph":I
    if-le v6, v1, :cond_36

    .line 1927
    const/4 v0, -0x1

    .line 1935
    .local v0, "dir":I
    :cond_24
    :goto_24
    move-object v10, v5

    .line 1936
    .local v10, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v0, :cond_4e

    iget-object v5, v5, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_29
    if-nez v5, :cond_1d

    .line 1937
    iput-object v10, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 1938
    if-gtz v0, :cond_51

    .line 1939
    iput-object v9, v10, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 1942
    :goto_31
    invoke-static {v8, v9}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v8

    .restart local v8    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_15

    .line 1928
    .end local v0    # "dir":I
    .end local v8    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v10    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_36
    if-ge v6, v1, :cond_3a

    .line 1929
    const/4 v0, 0x1

    .restart local v0    # "dir":I
    goto :goto_24

    .line 1930
    .end local v0    # "dir":I
    :cond_3a
    if-nez v3, :cond_47

    .line 1931
    invoke-static {v2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_47

    .line 1933
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_42
    invoke-static {v2, v7}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "dir":I
    goto :goto_24

    .line 1932
    .end local v0    # "dir":I
    :cond_47
    invoke-static {v3, v2, v7}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "dir":I
    if-nez v0, :cond_24

    goto :goto_42

    .line 1936
    .restart local v10    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_4e
    iget-object v5, v5, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_29

    .line 1941
    :cond_51
    iput-object v9, v10, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_31

    .line 1948
    .end local v0    # "dir":I
    .end local v1    # "h":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "ph":I
    .end local v7    # "pk":Ljava/lang/Object;, "TK;"
    .end local v10    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_54
    invoke-static {p1, v8}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 1949
    return-void
.end method

.method final untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 1956
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 1957
    .local v3, "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v2, p0

    .end local v0    # "hd":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v3    # "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .local v2, "q":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_4
    if-eqz v2, :cond_14

    .line 1958
    invoke-virtual {p1, v2, v4}, Ljava/util/HashMap;->replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v1

    .line 1959
    .local v1, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v3, :cond_11

    .line 1960
    move-object v0, v1

    .line 1963
    :goto_d
    move-object v3, v1

    .line 1957
    .local v3, "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_4

    .line 1962
    .end local v3    # "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_11
    iput-object v1, v3, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_d

    .line 1965
    .end local v1    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_14
    return-object v0
.end method
