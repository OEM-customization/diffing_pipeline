.class final Ljava/util/ArrayPrefixHelpers$CumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x49767bc622e29967L


# instance fields
.field final blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist hi:I

.field blacklist in:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist left:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field blacklist right:Ljava/util/ArrayPrefixHelpers$CumulateTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;II)V
    .registers 9
    .param p4, "lo"    # I
    .param p5, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 117
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 118
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 120
    nop

    .line 122
    sub-int v0, p5, p4

    .line 121
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 122
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 123
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V
    .registers 9
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayPrefixHelpers$CumulateTask<",
            "TT;>;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;[TT;IIIII)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p1, "parent":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local p2, "function":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    .local p3, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 130
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    .line 131
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 132
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .line 133
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    .line 134
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 23

    .line 139
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    if-eqz v1, :cond_1c2

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    move-object v12, v1

    .local v12, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz v1, :cond_1c2

    .line 141
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 142
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 143
    .local v15, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_15
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_1be

    iget v2, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1ba

    .line 144
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_c5

    .line 145
    iget-object v8, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v7, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 146
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v8, :cond_66

    .line 147
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 148
    .local v16, "mid":I
    new-instance v6, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v17, v0

    .line 150
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v21, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v8, v0

    .line 152
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v8    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v15, v0

    move-object v2, v8

    move-object/from16 v7, v17

    move/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_bc

    .line 154
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_66
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget-object v0, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 155
    .local v0, "pin":Ljava/lang/Object;, "TT;"
    move-object/from16 v2, v18

    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v2, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iput-object v0, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 156
    const/4 v4, 0x0

    move-object v5, v4

    .line 157
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v4, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v6, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v6, :cond_9b

    .line 158
    iget-object v7, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 159
    .local v7, "lout":Ljava/lang/Object;, "TT;"
    move/from16 v8, v20

    .end local v20    # "l":I
    .local v8, "l":I
    if-ne v8, v13, :cond_82

    move-object v9, v7

    goto :goto_86

    .line 160
    :cond_82
    invoke-interface {v11, v0, v7}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :goto_86
    iput-object v9, v6, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 162
    :cond_88
    invoke-virtual {v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_91

    .line 163
    goto :goto_9d

    .line 164
    :cond_91
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v10, v9}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 165
    move-object v5, v6

    .line 166
    goto :goto_9d

    .line 157
    .end local v7    # "lout":Ljava/lang/Object;, "TT;"
    .end local v8    # "l":I
    .end local v10    # "c":I
    .restart local v20    # "l":I
    :cond_9b
    move/from16 v8, v20

    .line 171
    .end local v20    # "l":I
    .restart local v8    # "l":I
    :cond_9d
    :goto_9d
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_a7

    .line 172
    move-object v15, v5

    goto :goto_b4

    .line 173
    :cond_a7
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9, v7}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 174
    if-eqz v5, :cond_b2

    .line 175
    move-object v4, v5

    .line 176
    :cond_b2
    move-object v3, v2

    .line 177
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v15, v3

    .line 180
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "c":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_b4
    if-nez v15, :cond_ba

    .line 181
    move/from16 v18, v1

    goto/16 :goto_1c1

    .line 180
    :cond_ba
    move-object v0, v4

    move-object v7, v6

    .line 183
    .end local v4    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_bc
    if-eqz v0, :cond_c1

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 185
    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v2    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_c1
    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 144
    .end local v8    # "l":I
    .end local v19    # "h":I
    .local v9, "h":I
    .local v10, "l":I
    :cond_c5
    move/from16 v19, v9

    move v8, v10

    .line 189
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v19    # "h":I
    :goto_c8
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_d5

    .line 190
    move/from16 v18, v1

    goto/16 :goto_1c1

    .line 191
    :cond_d5
    and-int/lit8 v0, v2, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_dc

    move v0, v4

    goto :goto_e1

    .line 192
    :cond_dc
    if-le v8, v13, :cond_e0

    move v0, v5

    goto :goto_e1

    :cond_e0
    const/4 v0, 0x6

    :goto_e1
    nop

    .line 193
    .local v0, "state":I
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1b3

    .line 194
    nop

    .line 198
    .end local v2    # "b":I
    if-eq v0, v5, :cond_10c

    .line 200
    if-ne v8, v13, :cond_f4

    .line 201
    aget-object v2, v12, v13

    .line 202
    .local v2, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v6, v13, 0x1

    .local v6, "first":I
    goto :goto_f7

    .line 205
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v6    # "first":I
    :cond_f4
    iget-object v2, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 206
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    move v6, v8

    .line 208
    .restart local v6    # "first":I
    :goto_f7
    move v7, v6

    .local v7, "i":I
    :goto_f8
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v7, v9, :cond_10a

    .line 209
    aget-object v10, v12, v7

    invoke-interface {v11, v2, v10}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    aput-object v10, v12, v7

    .line 208
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v9

    goto :goto_f8

    .line 210
    .end local v6    # "first":I
    .end local v7    # "i":I
    :cond_10a
    move-object v6, v2

    goto :goto_124

    .line 211
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_10c
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_121

    .line 212
    aget-object v2, v12, v8

    .line 213
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v10, v8, 0x1

    .local v10, "i":I
    :goto_114
    if-ge v10, v9, :cond_11f

    .line 214
    aget-object v6, v12, v10

    invoke-interface {v11, v2, v6}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    add-int/lit8 v10, v10, 0x1

    goto :goto_114

    :cond_11f
    move-object v6, v2

    .end local v10    # "i":I
    goto :goto_124

    .line 217
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    :cond_121
    iget-object v2, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object v6, v2

    .line 218
    .local v6, "sum":Ljava/lang/Object;, "TT;"
    :goto_124
    iput-object v6, v15, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 220
    :goto_126
    nop

    .line 221
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 222
    .local v2, "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v7, v2

    .local v7, "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v2, :cond_13f

    .line 223
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_13b

    .line 224
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->quietlyComplete()V

    move/from16 v18, v1

    goto/16 :goto_1c1

    .line 223
    :cond_13b
    move/from16 v18, v1

    goto/16 :goto_1c1

    .line 227
    :cond_13f
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v10

    .line 228
    .local v10, "b":I
    and-int v16, v10, v0

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_14e

    .line 229
    move-object v15, v7

    move/from16 v18, v1

    goto/16 :goto_1ac

    .line 230
    :cond_14e
    and-int v16, v10, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_1a1

    .line 232
    iget-object v3, v7, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v17, v3

    .local v17, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_17e

    iget-object v3, v7, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v18, v3

    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v3, :cond_177

    .line 234
    move-object/from16 v3, v17

    .end local v17    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v3, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v4, v3, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 235
    .local v4, "lout":Ljava/lang/Object;, "TT;"
    move-object/from16 v5, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .local v5, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "th":I
    iget v1, v5, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v1, v14, :cond_16e

    move-object v1, v4

    goto :goto_174

    .line 236
    :cond_16e
    iget-object v1, v5, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    invoke-interface {v11, v4, v1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_174
    iput-object v1, v7, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    goto :goto_182

    .line 232
    .end local v3    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v4    # "lout":Ljava/lang/Object;, "TT;"
    .end local v5    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v1    # "th":I
    .restart local v17    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_177
    move-object/from16 v3, v17

    move-object/from16 v5, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .end local v17    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v3    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v5    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "th":I
    goto :goto_182

    .end local v3    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .restart local v17    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_17e
    move/from16 v18, v1

    move-object/from16 v3, v17

    .line 238
    .end local v1    # "th":I
    .end local v17    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v3    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "th":I
    :goto_182
    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_18c

    iget v1, v7, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v1, v13, :cond_18c

    .line 239
    const/4 v1, 0x1

    goto :goto_18d

    :cond_18c
    const/4 v1, 0x0

    .line 240
    .local v1, "refork":I
    :goto_18d
    or-int v4, v10, v0

    or-int/2addr v4, v1

    move v5, v4

    .local v5, "nextState":I
    if-eq v4, v10, :cond_199

    .line 241
    invoke-virtual {v7, v10, v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 242
    :cond_199
    const/4 v0, 0x2

    .line 243
    move-object v15, v7

    .line 244
    if-eqz v1, :cond_1a0

    .line 245
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 247
    .end local v1    # "refork":I
    .end local v3    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "nextState":I
    :cond_1a0
    goto :goto_1ac

    .line 248
    .end local v18    # "th":I
    .local v1, "th":I
    :cond_1a1
    move/from16 v18, v1

    .end local v1    # "th":I
    .restart local v18    # "th":I
    or-int v1, v10, v0

    invoke-virtual {v7, v10, v1}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 249
    goto :goto_1c1

    .line 250
    .end local v2    # "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v10    # "b":I
    :cond_1ac
    :goto_1ac
    move/from16 v1, v18

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto/16 :goto_126

    .line 193
    .end local v6    # "sum":Ljava/lang/Object;, "TT;"
    .end local v7    # "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "h":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .local v2, "b":I
    .restart local v19    # "h":I
    :cond_1b3
    move/from16 v18, v1

    move/from16 v9, v19

    .end local v1    # "th":I
    .end local v19    # "h":I
    .restart local v9    # "h":I
    .restart local v18    # "th":I
    const/4 v3, 0x1

    goto/16 :goto_c8

    .line 143
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v8    # "l":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .local v10, "l":I
    :cond_1ba
    move/from16 v18, v1

    move v8, v10

    .end local v1    # "th":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v18    # "th":I
    goto :goto_1c1

    .end local v8    # "l":I
    .end local v9    # "h":I
    .end local v18    # "th":I
    .restart local v1    # "th":I
    .restart local v10    # "l":I
    :cond_1be
    move/from16 v18, v1

    move v8, v10

    .line 253
    .end local v1    # "th":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v18    # "th":I
    :goto_1c1
    return-void

    .line 140
    .end local v8    # "l":I
    .end local v12    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "th":I
    :cond_1c2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
