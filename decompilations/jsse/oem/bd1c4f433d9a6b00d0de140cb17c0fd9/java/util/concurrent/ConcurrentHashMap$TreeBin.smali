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
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Lsun/misc/Unsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile lockState:I

.field root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    .line 3303
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    .line 3307
    :try_start_10
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    .line 3308
    const-class v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string/jumbo v3, "lockState"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 3307
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J
    :try_end_21
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_10 .. :try_end_21} :catch_22

    .line 2778
    return-void

    .line 3309
    :catch_22
    move-exception v0

    .line 3310
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 2809
    const/4 v11, -0x2

    invoke-direct {p0, v11, v12, v12, v12}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    .line 2810
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2811
    const/4 v8, 0x0

    .line 2812
    .local v8, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v9, p1

    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v9, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_a
    if-eqz v9, :cond_5a

    .line 2813
    iget-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2814
    .local v4, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2815
    if-nez v8, :cond_1d

    .line 2816
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2817
    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2818
    move-object v8, v9

    .line 2812
    .local v8, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1b
    move-object v9, v4

    goto :goto_a

    .line 2821
    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2822
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget v1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .line 2823
    .local v1, "h":I
    const/4 v3, 0x0

    .line 2824
    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v8

    .line 2826
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_23
    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2827
    .local v7, "pk":Ljava/lang/Object;, "TK;"
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .local v6, "ph":I
    if-le v6, v1, :cond_3c

    .line 2828
    const/4 v0, -0x1

    .line 2835
    .local v0, "dir":I
    :cond_2a
    :goto_2a
    move-object v10, v5

    .line 2836
    .local v10, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v0, :cond_54

    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_2f
    if-nez v5, :cond_23

    .line 2837
    iput-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2838
    if-gtz v0, :cond_57

    .line 2839
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2842
    :goto_37
    invoke-static {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v8

    .restart local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_1b

    .line 2829
    .end local v0    # "dir":I
    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3c
    if-ge v6, v1, :cond_40

    .line 2830
    const/4 v0, 0x1

    .restart local v0    # "dir":I
    goto :goto_2a

    .line 2831
    .end local v0    # "dir":I
    :cond_40
    if-nez v3, :cond_4d

    .line 2832
    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_4d

    .line 2834
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_48
    invoke-static {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "dir":I
    goto :goto_2a

    .line 2833
    .end local v0    # "dir":I
    :cond_4d
    invoke-static {v3, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "dir":I
    if-nez v0, :cond_2a

    goto :goto_48

    .line 2836
    .restart local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_54
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2f

    .line 2841
    :cond_57
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_37

    .line 2848
    .end local v0    # "dir":I
    .end local v1    # "h":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "ph":I
    .end local v7    # "pk":Ljava/lang/Object;, "TK;"
    .end local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_5a
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2849
    sget-boolean v11, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v11, :cond_6e

    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v11}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v11

    if-nez v11, :cond_6e

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 2850
    :cond_6e
    return-void
.end method

.method static balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3189
    :goto_2
    if-eqz p1, :cond_6

    if-ne p1, p0, :cond_7

    .line 3190
    :cond_6
    return-object p0

    .line 3191
    :cond_7
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_e

    .line 3192
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3193
    return-object p1

    .line 3195
    :cond_e
    iget-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_15

    .line 3196
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3197
    return-object p0

    .line 3199
    :cond_15
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v3, p1, :cond_81

    .line 3200
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v4, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_2e

    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_2e

    .line 3201
    iput-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3202
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3203
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3204
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_32

    const/4 v4, 0x0

    .line 3206
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2e
    :goto_2e
    if-nez v4, :cond_35

    .line 3207
    move-object p1, v2

    goto :goto_2

    .line 3204
    .restart local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_32
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_2e

    .line 3209
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_35
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3210
    .local v1, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_41

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4d

    .line 3211
    :cond_41
    if-eqz v0, :cond_49

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    .line 3210
    if-eqz v5, :cond_4d

    .line 3212
    :cond_49
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3213
    move-object p1, v2

    goto :goto_2

    .line 3216
    :cond_4d
    if-eqz v1, :cond_55

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_64

    .line 3217
    :cond_55
    if-eqz v0, :cond_59

    .line 3218
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3219
    :cond_59
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3220
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3221
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_7b

    .line 3222
    const/4 v4, 0x0

    .line 3224
    :cond_64
    :goto_64
    if-eqz v4, :cond_71

    .line 3225
    if-nez v2, :cond_7e

    move v5, v6

    :goto_69
    iput-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3226
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v1, :cond_71

    .line 3227
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3229
    :cond_71
    if-eqz v2, :cond_79

    .line 3230
    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3231
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3233
    :cond_79
    move-object p1, p0

    goto :goto_2

    .line 3222
    :cond_7b
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_64

    .line 3225
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_7e
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_69

    .line 3238
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_81
    if-eqz v3, :cond_94

    iget-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_94

    .line 3239
    iput-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3240
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3241
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3242
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_99

    const/4 v3, 0x0

    .line 3244
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_94
    :goto_94
    if-nez v3, :cond_9c

    .line 3245
    move-object p1, v2

    goto/16 :goto_2

    .line 3242
    .restart local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_99
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_94

    .line 3247
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9c
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3248
    .restart local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_a8

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b5

    .line 3249
    :cond_a8
    if-eqz v1, :cond_b0

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    .line 3248
    if-eqz v5, :cond_b5

    .line 3250
    :cond_b0
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3251
    move-object p1, v2

    goto/16 :goto_2

    .line 3254
    :cond_b5
    if-eqz v0, :cond_bd

    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_cc

    .line 3255
    :cond_bd
    if-eqz v1, :cond_c1

    .line 3256
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3257
    :cond_c1
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3258
    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3259
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_e4

    .line 3260
    const/4 v3, 0x0

    .line 3262
    :cond_cc
    :goto_cc
    if-eqz v3, :cond_d9

    .line 3263
    if-nez v2, :cond_e7

    move v5, v6

    :goto_d1
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3264
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v0, :cond_d9

    .line 3265
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3267
    :cond_d9
    if-eqz v2, :cond_e1

    .line 3268
    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3269
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3271
    :cond_e1
    move-object p1, p0

    goto/16 :goto_2

    .line 3260
    :cond_e4
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_cc

    .line 3263
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e7
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_d1
.end method

.method static balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3133
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3135
    :cond_4
    :goto_4
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_b

    .line 3136
    iput-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3137
    return-object p1

    .line 3139
    :cond_b
    iget-boolean v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_13

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_14

    .line 3140
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    return-object p0

    .line 3141
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_14
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v0, v2, :cond_46

    .line 3142
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_28

    iget-boolean v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_28

    .line 3143
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3144
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3145
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3146
    move-object p1, v1

    goto :goto_4

    .line 3149
    :cond_28
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v4, :cond_36

    .line 3150
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3151
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_43

    const/4 v1, 0x0

    .line 3153
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_36
    :goto_36
    if-eqz v0, :cond_4

    .line 3154
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3155
    if-eqz v1, :cond_4

    .line 3156
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3157
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_4

    .line 3151
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_43
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_36

    .line 3163
    .end local v3    # "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_46
    if-eqz v2, :cond_54

    iget-boolean v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v4, :cond_54

    .line 3164
    iput-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3165
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3166
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3167
    move-object p1, v1

    goto :goto_4

    .line 3170
    :cond_54
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v4, :cond_62

    .line 3171
    move-object p1, v0

    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3172
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v0, :cond_6f

    const/4 v1, 0x0

    .line 3174
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_62
    :goto_62
    if-eqz v0, :cond_4

    .line 3175
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3176
    if-eqz v1, :cond_4

    .line 3177
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3178
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_4

    .line 3172
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6f
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_62
.end method

.method static checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    .line 3282
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "tp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3283
    .local v4, "tr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "tb":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3284
    .local v2, "tn":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_14

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eq v5, p0, :cond_14

    .line 3285
    return v7

    .line 3286
    :cond_14
    if-eqz v2, :cond_1b

    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v5, p0, :cond_1b

    .line 3287
    return v7

    .line 3288
    :cond_1b
    if-eqz v3, :cond_26

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v5, :cond_26

    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v5, :cond_26

    .line 3289
    return v7

    .line 3290
    :cond_26
    if-eqz v1, :cond_33

    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v5, p0, :cond_32

    iget v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v5, v6, :cond_33

    .line 3291
    :cond_32
    return v7

    .line 3292
    :cond_33
    if-eqz v4, :cond_40

    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v5, p0, :cond_3f

    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v5, v6, :cond_40

    .line 3293
    :cond_3f
    return v7

    .line 3294
    :cond_40
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    if-eqz v4, :cond_51

    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v5, :cond_51

    .line 3295
    return v7

    .line 3296
    :cond_51
    if-eqz v1, :cond_5c

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5c

    .line 3297
    return v7

    .line 3298
    :cond_5c
    if-eqz v4, :cond_67

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_67

    .line 3299
    return v7

    .line 3300
    :cond_67
    const/4 v5, 0x1

    return v5
.end method

.method private final contendedLock()V
    .registers 8

    .prologue
    .line 2871
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v6, 0x0

    .line 2873
    .local v6, "waiting":Z
    :cond_1
    :goto_1
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .local v4, "s":I
    and-int/lit8 v0, v4, -0x3

    if-nez v0, :cond_19

    .line 2874
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2875
    if-eqz v6, :cond_18

    .line 2876
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .line 2877
    :cond_18
    return-void

    .line 2880
    :cond_19
    and-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_32

    .line 2881
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v5, v4, 0x2

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2882
    const/4 v6, 0x1

    .line 2883
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    goto :goto_1

    .line 2886
    :cond_32
    if-eqz v6, :cond_1

    .line 2887
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final lockRoot()V
    .registers 7

    .prologue
    .line 2856
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2857
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    .line 2858
    :cond_10
    return-void
.end method

.method static rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3098
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1c

    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_1c

    .line 3099
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_e

    .line 3100
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3101
    :cond_e
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1d

    .line 3102
    move-object p0, v1

    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3107
    :goto_18
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3108
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3110
    .end local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1c
    return-object p0

    .line 3103
    .restart local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_24

    .line 3104
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_18

    .line 3106
    :cond_24
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_18
.end method

.method static rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3116
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1c

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_1c

    .line 3117
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_e

    .line 3118
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3119
    :cond_e
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v2, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_1d

    .line 3120
    move-object p0, v0

    const/4 v3, 0x0

    iput-boolean v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3125
    :goto_18
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3126
    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3128
    .end local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1c
    return-object p0

    .line 3121
    .restart local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1d
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v3, p1, :cond_24

    .line 3122
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_18

    .line 3124
    :cond_24
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_18
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 2797
    if-eqz p0, :cond_4

    if-nez p1, :cond_10

    .line 2800
    :cond_4
    :goto_4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-gt v1, v2, :cond_27

    .line 2801
    const/4 v0, -0x1

    .line 2802
    .local v0, "d":I
    :cond_f
    :goto_f
    return v0

    .line 2798
    .end local v0    # "d":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2798
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "d":I
    if-nez v0, :cond_f

    goto :goto_4

    .line 2801
    .end local v0    # "d":I
    :cond_27
    const/4 v0, 0x1

    .restart local v0    # "d":I
    goto :goto_f
.end method

.method private final unlockRoot()V
    .registers 2

    .prologue
    .line 2864
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .line 2865
    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 14
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2897
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    if-eqz p2, :cond_61

    .line 2898
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_4
    :goto_4
    if-eqz v6, :cond_61

    .line 2900
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .local v4, "s":I
    and-int/lit8 v0, v4, 0x3

    if-eqz v0, :cond_20

    .line 2901
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v0, p1, :cond_1d

    .line 2902
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v7, p2, :cond_1c

    if-eqz v7, :cond_1d

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2901
    if-eqz v0, :cond_1d

    .line 2903
    :cond_1c
    return-object v6

    .line 2904
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_1d
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_4

    .line 2906
    :cond_20
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    .line 2907
    add-int/lit8 v5, v4, 0x4

    move-object v1, p0

    .line 2906
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2910
    :try_start_2d
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_4c

    .local v9, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v9, :cond_46

    const/4 v8, 0x0

    .line 2914
    :goto_32
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v1, -0x4

    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    .line 2915
    const/4 v1, 0x6

    .line 2914
    if-ne v0, v1, :cond_45

    .line 2915
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .local v10, "w":Ljava/lang/Thread;
    if-eqz v10, :cond_45

    .line 2916
    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2918
    .end local v10    # "w":Ljava/lang/Thread;
    :cond_45
    return-object v8

    .line 2911
    :cond_46
    const/4 v0, 0x0

    :try_start_47
    invoke-virtual {v9, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    move-result-object v8

    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_32

    .line 2912
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_4c
    move-exception v0

    .line 2914
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v5, -0x4

    invoke-virtual {v1, p0, v2, v3, v5}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v1

    .line 2915
    const/4 v2, 0x6

    .line 2914
    if-ne v1, v2, :cond_60

    .line 2915
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    .restart local v10    # "w":Ljava/lang/Thread;
    if-eqz v10, :cond_60

    .line 2916
    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2912
    .end local v10    # "w":Ljava/lang/Thread;
    :cond_60
    throw v0

    .line 2922
    .end local v4    # "s":I
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 20
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2930
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    const/4 v10, 0x0

    .line 2931
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    .line 2932
    .local v15, "searched":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2934
    .end local v10    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    if-nez v11, :cond_31

    .line 2935
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2982
    :goto_1d
    sget-boolean v3, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v3, :cond_d0

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v3

    if-nez v3, :cond_d0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2938
    :cond_31
    iget v12, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .local v12, "ph":I
    move/from16 v0, p1

    if-le v12, v0, :cond_62

    .line 2939
    const/4 v9, -0x1

    .line 2959
    .local v9, "dir":I
    :cond_38
    :goto_38
    move-object v7, v11

    .line 2960
    .local v7, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v9, :cond_b1

    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3d
    if-nez v11, :cond_6

    .line 2961
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2962
    .local v6, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2963
    if-eqz v6, :cond_56

    .line 2964
    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2965
    :cond_56
    if-gtz v9, :cond_b4

    .line 2966
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2969
    :goto_5a
    iget-boolean v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v3, :cond_b7

    .line 2970
    const/4 v3, 0x1

    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_1d

    .line 2940
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "dir":I
    :cond_62
    move/from16 v0, p1

    if-ge v12, v0, :cond_68

    .line 2941
    const/4 v9, 0x1

    .restart local v9    # "dir":I
    goto :goto_38

    .line 2942
    .end local v9    # "dir":I
    :cond_68
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .local v13, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p2

    if-eq v13, v0, :cond_78

    if-eqz v13, :cond_79

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2943
    :cond_78
    return-object v11

    .line 2944
    :cond_79
    if-nez v10, :cond_93

    .line 2945
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v10

    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_93

    .line 2947
    .end local v10    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_81
    if-nez v15, :cond_aa

    .line 2949
    const/4 v15, 0x1

    .line 2950
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v8, "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_9c

    .line 2951
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .local v14, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_9c

    .line 2954
    :cond_92
    return-object v14

    .line 2946
    .end local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_93
    move-object/from16 v0, p2

    invoke-static {v10, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "dir":I
    if-nez v9, :cond_38

    goto :goto_81

    .line 2952
    .end local v9    # "dir":I
    .restart local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9c
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v8, :cond_aa

    .line 2953
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v14

    .restart local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v14, :cond_92

    .line 2956
    .end local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_aa
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "dir":I
    goto :goto_38

    .line 2960
    .end local v13    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_3d

    .line 2968
    .restart local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b4
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_5a

    .line 2972
    :cond_b7
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2974
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_cb

    .line 2976
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    goto/16 :goto_1d

    .line 2975
    :catchall_cb
    move-exception v3

    .line 2976
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2975
    throw v3

    .line 2983
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "dir":I
    .end local v12    # "ph":I
    :cond_d0
    const/4 v3, 0x0

    return-object v3
.end method

.method final removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 2997
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2998
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3000
    .local v5, "pred":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v5, :cond_17

    .line 3001
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3004
    :goto_a
    if-eqz v1, :cond_e

    .line 3005
    iput-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3006
    :cond_e
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_1a

    .line 3007
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3008
    const/4 v13, 0x1

    return v13

    .line 3003
    :cond_17
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    goto :goto_a

    .line 3010
    :cond_1a
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v6, :cond_22

    iget-object v13, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v13, :cond_24

    .line 3012
    :cond_22
    const/4 v13, 0x1

    return v13

    .line 3011
    :cond_24
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v8, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_22

    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v13, :cond_22

    .line 3013
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 3016
    :try_start_2f
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3017
    .local v2, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3018
    .local v4, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_cc

    if-eqz v4, :cond_cc

    .line 3019
    move-object v9, v4

    .line 3020
    .local v9, "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_38
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v10, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_3e

    .line 3021
    move-object v9, v10

    goto :goto_38

    .line 3022
    :cond_3e
    iget-boolean v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .local v0, "c":Z
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3023
    iget-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3024
    .local v12, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3025
    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v9, v4, :cond_a5

    .line 3026
    iput-object v9, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3027
    iput-object p1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3040
    :cond_50
    :goto_50
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3041
    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_59

    .line 3042
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3043
    :cond_59
    iput-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_5f

    .line 3044
    iput-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3045
    :cond_5f
    iput-object v3, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v3, :cond_c0

    .line 3046
    move-object v6, v9

    .line 3051
    :goto_64
    if-eqz v12, :cond_ca

    .line 3052
    move-object v7, v12

    .line 3062
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_67
    if-eq v7, p1, :cond_79

    .line 3063
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3064
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v3, :cond_d6

    .line 3065
    move-object v6, v7

    .line 3070
    :goto_70
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3073
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_79
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v13, :cond_e0

    move-object v13, v6

    :goto_7e
    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3075
    if-ne p1, v7, :cond_90

    .line 3077
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_90

    .line 3078
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_e5

    .line 3079
    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3082
    :cond_8d
    :goto_8d
    const/4 v13, 0x0

    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_90
    .catchall {:try_start_2f .. :try_end_90} :catchall_b8

    .line 3086
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_90
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3088
    sget-boolean v13, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    if-nez v13, :cond_ed

    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v13

    if-nez v13, :cond_ed

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 3030
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v0    # "c":Z
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a5
    :try_start_a5
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3031
    .local v11, "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v11, :cond_b1

    .line 3032
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v9, v13, :cond_bd

    .line 3033
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3037
    :cond_b1
    :goto_b1
    iput-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v4, :cond_50

    .line 3038
    iput-object v9, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_b7
    .catchall {:try_start_a5 .. :try_end_b7} :catchall_b8

    goto :goto_50

    .line 3085
    .end local v0    # "c":Z
    .end local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_b8
    move-exception v13

    .line 3086
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3085
    throw v13

    .line 3035
    .restart local v0    # "c":Z
    .restart local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_bd
    :try_start_bd
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_b1

    .line 3047
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c0
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_c7

    .line 3048
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_64

    .line 3050
    :cond_c7
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_64

    .line 3054
    :cond_ca
    move-object v7, p1

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_67

    .line 3056
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_cc
    if-eqz v2, :cond_d0

    .line 3057
    move-object v7, v2

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_67

    .line 3058
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d0
    if-eqz v4, :cond_d4

    .line 3059
    move-object v7, v4

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_67

    .line 3061
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d4
    move-object v7, p1

    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_67

    .line 3066
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d6
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_dd

    .line 3067
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_70

    .line 3069
    :cond_dd
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_70

    .line 3073
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e0
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v13

    goto :goto_7e

    .line 3080
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e5
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v13, :cond_8d

    .line 3081
    const/4 v13, 0x0

    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_ec
    .catchall {:try_start_bd .. :try_end_ec} :catchall_b8

    goto :goto_8d

    .line 3089
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ed
    const/4 v13, 0x0

    return v13
.end method
