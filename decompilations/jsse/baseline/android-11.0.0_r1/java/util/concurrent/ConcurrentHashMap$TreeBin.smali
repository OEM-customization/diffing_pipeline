.class final Ljava/util/concurrent/ConcurrentHashMap$TreeBin;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o LOCKSTATE:J

.field static final greylist-max-o READER:I = 0x4

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field static final greylist-max-o WAITER:I = 0x2

.field static final greylist-max-o WRITER:I = 0x1


# instance fields
.field volatile greylist-max-o first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o lockState:I

.field greylist-max-o root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 2780
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3305
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    .line 3309
    :try_start_8
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string v2, "lockState"

    .line 3310
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J
    :try_end_16
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_16} :catch_18

    .line 3313
    nop

    .line 3314
    return-void

    .line 3311
    :catch_18
    move-exception v0

    .line 3312
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2811
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2812
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2813
    const/4 v0, 0x0

    .line 2814
    .local v0, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v2, p1

    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_9
    if-eqz v2, :cond_61

    .line 2815
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2816
    .local v3, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2817
    if-nez v0, :cond_1c

    .line 2818
    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2819
    const/4 v4, 0x0

    iput-boolean v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2820
    move-object v0, v2

    goto :goto_5e

    .line 2823
    :cond_1c
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2824
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .line 2825
    .local v5, "h":I
    const/4 v6, 0x0

    .line 2826
    .local v6, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    .line 2828
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_22
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2829
    .local v8, "pk":Ljava/lang/Object;, "TK;"
    iget v9, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v10, v9

    .local v10, "ph":I
    if-le v9, v5, :cond_2b

    .line 2830
    const/4 v9, -0x1

    .local v9, "dir":I
    goto :goto_45

    .line 2831
    .end local v9    # "dir":I
    :cond_2b
    if-ge v10, v5, :cond_2f

    .line 2832
    const/4 v9, 0x1

    .restart local v9    # "dir":I
    goto :goto_45

    .line 2833
    .end local v9    # "dir":I
    :cond_2f
    if-nez v6, :cond_38

    .line 2834
    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_3f

    .line 2835
    :cond_38
    invoke-static {v6, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v11, v9

    .local v11, "dir":I
    if-nez v9, :cond_44

    .line 2836
    .end local v11    # "dir":I
    :cond_3f
    invoke-static {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "dir":I
    goto :goto_45

    .line 2835
    .end local v9    # "dir":I
    .restart local v11    # "dir":I
    :cond_44
    move v9, v11

    .line 2837
    .end local v11    # "dir":I
    .restart local v9    # "dir":I
    :goto_45
    move-object v11, v7

    .line 2838
    .local v11, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v9, :cond_4b

    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4d

    :cond_4b
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_4d
    move-object v7, v12

    if-nez v12, :cond_60

    .line 2839
    iput-object v11, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2840
    if-gtz v9, :cond_57

    .line 2841
    iput-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_59

    .line 2843
    :cond_57
    iput-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2844
    :goto_59
    invoke-static {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    .line 2845
    nop

    .line 2814
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pk":Ljava/lang/Object;, "TK;"
    .end local v9    # "dir":I
    .end local v10    # "ph":I
    .end local v11    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5e
    move-object v2, v3

    goto :goto_9

    .line 2847
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v5    # "h":I
    .restart local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_60
    goto :goto_22

    .line 2850
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_61
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2851
    nop

    .line 2852
    return-void
.end method

.method static greylist-max-o balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3191
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-eqz p1, :cond_ed

    if-ne p1, p0, :cond_6

    goto/16 :goto_ed

    .line 3193
    :cond_6
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 3194
    iput-boolean v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3195
    return-object p1

    .line 3197
    :cond_f
    iget-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_16

    .line 3198
    iput-boolean v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3199
    return-object p0

    .line 3201
    :cond_16
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_86

    .line 3202
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v0

    .local v6, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_38

    iget-boolean v0, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_38

    .line 3203
    iput-boolean v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3204
    iput-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3205
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3206
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_35

    move-object v0, v4

    goto :goto_37

    :cond_35
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_37
    move-object v6, v0

    .line 3208
    :cond_38
    if-nez v6, :cond_3c

    .line 3209
    move-object p1, v1

    goto :goto_0

    .line 3211
    :cond_3c
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3212
    .local v7, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_46

    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4d

    :cond_46
    if-eqz v0, :cond_81

    iget-boolean v8, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4d

    goto :goto_81

    .line 3218
    :cond_4d
    if-eqz v7, :cond_53

    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_66

    .line 3219
    :cond_53
    if-eqz v0, :cond_57

    .line 3220
    iput-boolean v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3221
    :cond_57
    iput-boolean v5, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3222
    invoke-static {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3223
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_63

    .line 3224
    goto :goto_65

    :cond_63
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_65
    move-object v6, v4

    .line 3226
    :cond_66
    if-eqz v6, :cond_77

    .line 3227
    if-nez v1, :cond_6c

    move v4, v2

    goto :goto_6e

    :cond_6c
    iget-boolean v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_6e
    iput-boolean v4, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3228
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_77

    .line 3229
    iput-boolean v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3231
    :cond_77
    if-eqz v1, :cond_7f

    .line 3232
    iput-boolean v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3233
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3235
    :cond_7f
    move-object p1, p0

    goto :goto_84

    .line 3214
    :cond_81
    :goto_81
    iput-boolean v5, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3215
    move-object p1, v1

    .line 3237
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_84
    goto/16 :goto_0

    .line 3240
    .end local v6    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_86
    if-eqz v3, :cond_9e

    iget-boolean v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_9e

    .line 3241
    iput-boolean v2, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3242
    iput-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3243
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3244
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_9b

    move-object v0, v4

    goto :goto_9d

    :cond_9b
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_9d
    move-object v3, v0

    .line 3246
    :cond_9e
    if-nez v3, :cond_a3

    .line 3247
    move-object p1, v1

    goto/16 :goto_0

    .line 3249
    :cond_a3
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3250
    .local v6, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_ad

    iget-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b4

    :cond_ad
    if-eqz v6, :cond_e8

    iget-boolean v7, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b4

    goto :goto_e8

    .line 3256
    :cond_b4
    if-eqz v0, :cond_ba

    iget-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_cd

    .line 3257
    :cond_ba
    if-eqz v6, :cond_be

    .line 3258
    iput-boolean v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3259
    :cond_be
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3260
    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3261
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_ca

    .line 3262
    goto :goto_cc

    :cond_ca
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_cc
    move-object v3, v4

    .line 3264
    :cond_cd
    if-eqz v3, :cond_de

    .line 3265
    if-nez v1, :cond_d3

    move v4, v2

    goto :goto_d5

    :cond_d3
    iget-boolean v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_d5
    iput-boolean v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3266
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_de

    .line 3267
    iput-boolean v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3269
    :cond_de
    if-eqz v1, :cond_e6

    .line 3270
    iput-boolean v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3271
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3273
    :cond_e6
    move-object p1, p0

    goto :goto_eb

    .line 3252
    :cond_e8
    :goto_e8
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3253
    move-object p1, v1

    .line 3275
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_eb
    goto/16 :goto_0

    .line 3192
    .end local v1    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ed
    :goto_ed
    return-object p0
.end method

.method static greylist-max-o balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3135
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3137
    :cond_3
    :goto_3
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    .local v2, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 3138
    iput-boolean v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3139
    return-object p1

    .line 3141
    :cond_c
    iget-boolean v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7a

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v1

    .local v4, "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_17

    goto/16 :goto_7a

    .line 3143
    :cond_17
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    .local v5, "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    if-ne v2, v1, :cond_4d

    .line 3144
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v1

    .local v7, "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_2e

    iget-boolean v1, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_2e

    .line 3145
    iput-boolean v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3146
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3147
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3148
    move-object p1, v4

    goto :goto_3

    .line 3151
    :cond_2e
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_40

    .line 3152
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3153
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3f
    move-object v4, v6

    .line 3155
    :cond_40
    if-eqz v2, :cond_3

    .line 3156
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3157
    if-eqz v4, :cond_3

    .line 3158
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3159
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 3165
    .end local v7    # "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_4d
    if-eqz v5, :cond_5b

    iget-boolean v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_5b

    .line 3166
    iput-boolean v3, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3167
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3168
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3169
    move-object p1, v4

    goto :goto_3

    .line 3172
    :cond_5b
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_6d

    .line 3173
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3174
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_6c
    move-object v4, v6

    .line 3176
    :cond_6d
    if-eqz v2, :cond_3

    .line 3177
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3178
    if-eqz v4, :cond_3

    .line 3179
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3180
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 3142
    .end local v4    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static greylist-max-o checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3284
    .local p0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "tp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3285
    .local v2, "tr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "tb":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3286
    .local v4, "tn":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eq v6, p0, :cond_14

    .line 3287
    return v5

    .line 3288
    :cond_14
    if-eqz v4, :cond_1b

    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v6, p0, :cond_1b

    .line 3289
    return v5

    .line 3290
    :cond_1b
    if-eqz v0, :cond_26

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    .line 3291
    return v5

    .line 3292
    :cond_26
    if-eqz v1, :cond_33

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_32

    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_33

    .line 3293
    :cond_32
    return v5

    .line 3294
    :cond_33
    if-eqz v2, :cond_40

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_3f

    iget v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_40

    .line 3295
    :cond_3f
    return v5

    .line 3296
    :cond_40
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v2, :cond_51

    iget-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    .line 3297
    return v5

    .line 3298
    :cond_51
    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 3299
    return v5

    .line 3300
    :cond_5a
    if-eqz v2, :cond_63

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 3301
    return v5

    .line 3302
    :cond_63
    const/4 v5, 0x1

    return v5
.end method

.method private final greylist-max-o contendedLock()V
    .registers 10

    .line 2873
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    .line 2875
    .local v0, "waiting":Z
    :cond_1
    :goto_1
    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v8, v1

    .local v8, "s":I
    and-int/lit8 v1, v1, -0x3

    if-nez v1, :cond_1b

    .line 2876
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v7, 0x1

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2877
    if-eqz v0, :cond_1a

    .line 2878
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .line 2879
    :cond_1a
    return-void

    .line 2882
    :cond_1b
    and-int/lit8 v1, v8, 0x2

    if-nez v1, :cond_35

    .line 2883
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v7, v8, 0x2

    move-object v3, p0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2884
    const/4 v0, 0x1

    .line 2885
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 2888
    :cond_35
    if-eqz v0, :cond_3b

    .line 2889
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1

    .line 2888
    :cond_3b
    goto :goto_1
.end method

.method private final greylist-max-o lockRoot()V
    .registers 7

    .line 2858
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2859
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    .line 2860
    :cond_10
    return-void
.end method

.method static greylist-max-o rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3100
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 3101
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 3102
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3103
    :cond_10
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 3104
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    .line 3105
    :cond_1c
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 3106
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    .line 3108
    :cond_23
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3109
    :goto_25
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3110
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3112
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3118
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 3119
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 3120
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3121
    :cond_10
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 3122
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    .line 3123
    :cond_1c
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 3124
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    .line 3126
    :cond_23
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3127
    :goto_25
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3128
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3130
    .end local v1    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 2799
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2800
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2801
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "d":I
    if-nez v0, :cond_29

    .line 2802
    .end local v1    # "d":I
    :cond_1b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_27

    .line 2803
    const/4 v0, -0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    move v1, v0

    .line 2804
    .restart local v1    # "d":I
    :cond_29
    return v1
.end method

.method private final greylist-max-o unlockRoot()V
    .registers 2

    .line 2866
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .line 2867
    return-void
.end method


# virtual methods
.method final greylist-max-o find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 13
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2899
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_67

    .line 2900
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    if-eqz v1, :cond_67

    .line 2902
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v9, v2

    .local v9, "s":I
    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_23

    .line 2903
    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, p1, :cond_20

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_1f

    if-eqz v3, :cond_20

    .line 2904
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2905
    :cond_1f
    return-object v1

    .line 2906
    .end local v3    # "ek":Ljava/lang/Object;, "TK;"
    :cond_20
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_66

    .line 2908
    :cond_23
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v8, v9, 0x4

    move-object v4, p0

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2912
    const/4 v2, 0x6

    const/4 v3, -0x4

    :try_start_33
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v4

    .local v5, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_39

    goto :goto_3d

    .line 2913
    :cond_39
    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_52

    :goto_3d
    nop

    .line 2916
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v4, p0, v6, v7, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_50

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_50

    .line 2918
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2919
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_50
    nop

    .line 2920
    return-object v0

    .line 2915
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_52
    move-exception v0

    .line 2916
    sget-object v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v4, p0, v5, v6, v3}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_65

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .restart local v3    # "w":Ljava/lang/Thread;
    if-eqz v2, :cond_65

    .line 2918
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2919
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_65
    throw v0

    .line 2922
    .end local v9    # "s":I
    :cond_66
    :goto_66
    goto :goto_5

    .line 2924
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_67
    return-object v0
.end method

.method final greylist-max-o putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 20
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2932
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v0, 0x0

    .line 2933
    .local v0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 2934
    .local v2, "searched":Z
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move v10, v2

    move-object v11, v3

    .line 2936
    .end local v2    # "searched":Z
    .local v10, "searched":Z
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_c
    if-nez v11, :cond_22

    .line 2937
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v12

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v12, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2938
    goto/16 :goto_bd

    .line 2940
    :cond_22
    iget v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v12, v2

    .local v12, "ph":I
    if-le v2, v8, :cond_2d

    .line 2941
    const/4 v2, -0x1

    move v13, v2

    move v14, v10

    move-object v10, v0

    .local v2, "dir":I
    goto/16 :goto_7a

    .line 2942
    .end local v2    # "dir":I
    :cond_2d
    if-ge v12, v8, :cond_34

    .line 2943
    const/4 v2, 0x1

    move v13, v2

    move v14, v10

    move-object v10, v0

    .restart local v2    # "dir":I
    goto :goto_7a

    .line 2944
    .end local v2    # "dir":I
    :cond_34
    iget-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "pk":Ljava/lang/Object;, "TK;"
    if-eq v2, v9, :cond_cb

    if-eqz v3, :cond_43

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto/16 :goto_cb

    .line 2946
    :cond_43
    if-nez v0, :cond_4c

    .line 2947
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_53

    .line 2948
    :cond_4c
    invoke-static {v0, v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v4, v2

    .local v4, "dir":I
    if-nez v2, :cond_77

    .line 2949
    .end local v4    # "dir":I
    :cond_53
    if-nez v10, :cond_6f

    .line 2951
    const/4 v10, 0x1

    .line 2952
    iget-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v2

    .local v4, "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_62

    .line 2953
    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    move-object v5, v2

    .local v5, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_6e

    .end local v5    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_62
    iget-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v2

    if-eqz v2, :cond_6f

    .line 2955
    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v2

    move-object v5, v2

    .restart local v5    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_6f

    .line 2956
    :cond_6e
    return-object v5

    .line 2958
    .end local v4    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6f
    invoke-static {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    move v13, v2

    move v14, v10

    move-object v10, v0

    .restart local v2    # "dir":I
    goto :goto_7a

    .line 2948
    .end local v2    # "dir":I
    .local v4, "dir":I
    :cond_77
    move v13, v4

    move v14, v10

    move-object v10, v0

    .line 2961
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pk":Ljava/lang/Object;, "TK;"
    .end local v4    # "dir":I
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "dir":I
    .local v14, "searched":Z
    :goto_7a
    move-object v15, v11

    .line 2962
    .local v15, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v13, :cond_80

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_82

    :cond_80
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_82
    move-object v11, v0

    if-nez v0, :cond_c5

    .line 2963
    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2964
    .local v7, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v8, v7

    .end local v7    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v8, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2965
    if-eqz v8, :cond_9c

    .line 2966
    iput-object v2, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2967
    :cond_9c
    if-gtz v13, :cond_a1

    .line 2968
    iput-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_a3

    .line 2970
    :cond_a1
    iput-object v2, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2971
    :goto_a3
    iget-boolean v0, v15, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v0, :cond_ab

    .line 2972
    const/4 v0, 0x1

    iput-boolean v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_bb

    .line 2974
    :cond_ab
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2976
    :try_start_ae
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_c0

    .line 2978
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2979
    nop

    .line 2981
    nop

    .line 2984
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "ph":I
    .end local v13    # "dir":I
    .end local v15    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_bb
    move-object v0, v10

    move v10, v14

    .end local v14    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "searched":Z
    :goto_bd
    nop

    .line 2985
    const/4 v2, 0x0

    return-object v2

    .line 2978
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "ph":I
    .restart local v13    # "dir":I
    .restart local v14    # "searched":Z
    .restart local v15    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_c0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2979
    throw v0

    .line 2983
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "ph":I
    .end local v13    # "dir":I
    .end local v15    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c5
    move/from16 v8, p1

    move-object v0, v10

    move v10, v14

    goto/16 :goto_c

    .line 2945
    .end local v14    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "pk":Ljava/lang/Object;, "TK;"
    .local v10, "searched":Z
    .restart local v12    # "ph":I
    :cond_cb
    :goto_cb
    return-object v11
.end method

.method final greylist-max-o removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2999
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3000
    .local v0, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3002
    .local v1, "pred":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_b

    .line 3003
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_d

    .line 3005
    :cond_b
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3006
    :goto_d
    if-eqz v0, :cond_11

    .line 3007
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3008
    :cond_11
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1a

    .line 3009
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3010
    return v3

    .line 3012
    :cond_1a
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v2

    .local v5, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v2

    .local v6, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_dc

    iget-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_2e

    goto/16 :goto_dc

    .line 3015
    :cond_2e
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 3018
    :try_start_31
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3019
    .local v2, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3020
    .local v3, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_8c

    if-eqz v3, :cond_8c

    .line 3021
    move-object v7, v3

    .line 3022
    .local v7, "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_3a
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v8

    .local v9, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_41

    .line 3023
    move-object v7, v9

    goto :goto_3a

    .line 3024
    :cond_41
    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .local v8, "c":Z
    iget-boolean v10, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v8, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3025
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3026
    .local v10, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3027
    .local v11, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v7, v3, :cond_54

    .line 3028
    iput-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3029
    iput-object p1, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_69

    .line 3032
    :cond_54
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3033
    .local v12, "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_63

    .line 3034
    iget-object v13, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v7, v13, :cond_61

    .line 3035
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_63

    .line 3037
    :cond_61
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3039
    :cond_63
    :goto_63
    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_69

    .line 3040
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3042
    .end local v12    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_69
    :goto_69
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3043
    iput-object v10, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_71

    .line 3044
    iput-object p1, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3045
    :cond_71
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_77

    .line 3046
    iput-object v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3047
    :cond_77
    iput-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v11, :cond_7d

    .line 3048
    move-object v5, v7

    goto :goto_86

    .line 3049
    :cond_7d
    iget-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v12, :cond_84

    .line 3050
    iput-object v7, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_86

    .line 3052
    :cond_84
    iput-object v7, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3053
    :goto_86
    if-eqz v10, :cond_8a

    .line 3054
    move-object v12, v10

    .local v12, "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_8b

    .line 3056
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8a
    move-object v12, p1

    .line 3057
    .end local v7    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "c":Z
    .end local v9    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_8b
    goto :goto_95

    .line 3058
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8c
    if-eqz v2, :cond_90

    .line 3059
    move-object v12, v2

    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_95

    .line 3060
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_90
    if-eqz v3, :cond_94

    .line 3061
    move-object v12, v3

    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_95

    .line 3063
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_94
    move-object v12, p1

    .line 3064
    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_95
    if-eq v12, p1, :cond_ae

    .line 3065
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v7, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3066
    .local v7, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v7, :cond_9f

    .line 3067
    move-object v5, v12

    goto :goto_a8

    .line 3068
    :cond_9f
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v8, :cond_a6

    .line 3069
    iput-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_a8

    .line 3071
    :cond_a6
    iput-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3072
    :goto_a8
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3075
    .end local v7    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ae
    iget-boolean v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v7, :cond_b4

    move-object v7, v5

    goto :goto_b8

    :cond_b4
    invoke-static {v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    :goto_b8
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3077
    if-ne p1, v12, :cond_d0

    .line 3079
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v8, v7

    .local v8, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_d0

    .line 3080
    iget-object v7, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_c8

    .line 3081
    iput-object v4, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_ce

    .line 3082
    :cond_c8
    iget-object v7, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_ce

    .line 3083
    iput-object v4, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3084
    :cond_ce
    :goto_ce
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_d0
    .catchall {:try_start_31 .. :try_end_d0} :catchall_d7

    .line 3088
    .end local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3089
    nop

    .line 3090
    nop

    .line 3091
    const/4 v2, 0x0

    return v2

    .line 3088
    :catchall_d7
    move-exception v2

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3089
    throw v2

    .line 3014
    .end local v6    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_dc
    :goto_dc
    return v3
.end method
