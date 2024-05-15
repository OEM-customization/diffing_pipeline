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
.method public final whitelist core-platform-api test-api compute()V
    .registers 24

    .line 139
    .local p0, "this":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->function:Ljava/util/function/BinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    if-eqz v1, :cond_1b9

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->array:[Ljava/lang/Object;

    move-object v13, v1

    .local v13, "a":[Ljava/lang/Object;, "[TT;"
    if-eqz v1, :cond_1b9

    .line 141
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->threshold:I

    .local v1, "th":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->origin:I

    .local v14, "org":I
    iget v15, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fence:I

    .line 142
    .local v15, "fnc":I
    move-object/from16 v2, p0

    move-object v10, v2

    .line 143
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_15
    iget v2, v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    move v9, v2

    .local v9, "l":I
    if-ltz v2, :cond_1b3

    iget v2, v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    move v8, v2

    .local v8, "h":I
    array-length v3, v13

    if-gt v2, v3, :cond_1ad

    .line 144
    sub-int v2, v8, v9

    const/4 v3, 0x1

    if-le v2, v1, :cond_ce

    .line 145
    iget-object v7, v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v6, v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 146
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v7, :cond_66

    .line 147
    add-int v2, v9, v8

    ushr-int/lit8 v16, v2, 0x1

    .line 148
    .local v16, "mid":I
    new-instance v5, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v5

    move-object v3, v10

    move-object v4, v11

    move-object v12, v5

    move-object v5, v13

    move-object v0, v6

    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v6, v14

    move-object/from16 v18, v0

    move-object v0, v7

    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move v7, v15

    move/from16 v19, v8

    .end local v8    # "h":I
    .local v19, "h":I
    move v8, v1

    move/from16 v20, v9

    .end local v9    # "l":I
    .local v20, "l":I
    move/from16 v9, v16

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v21, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v12, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v18, v12

    .line 150
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    new-instance v10, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v2, v10

    move-object v3, v0

    move/from16 v9, v20

    move/from16 v22, v1

    move-object v1, v10

    .end local v1    # "th":I
    .local v22, "th":I
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$CumulateTask;Ljava/util/function/BinaryOperator;[Ljava/lang/Object;IIIII)V

    iput-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object v7, v1

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v7    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v0, v1

    .line 152
    .end local v16    # "mid":I
    move-object v10, v0

    move/from16 v6, v20

    goto/16 :goto_c3

    .line 154
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .restart local v6    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v8    # "h":I
    .restart local v9    # "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_66
    move/from16 v22, v1

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object v0, v10

    .end local v1    # "th":I
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    .restart local v21    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v22    # "th":I
    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 155
    .local v1, "pin":Ljava/lang/Object;, "TT;"
    move-object/from16 v2, v21

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v2, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iput-object v1, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 156
    const/4 v4, 0x0

    move-object v0, v4

    move-object v5, v4

    .line 157
    .local v5, "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v18, :cond_9f

    .line 158
    iget-object v4, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 159
    .local v4, "lout":Ljava/lang/Object;, "TT;"
    move/from16 v6, v20

    .end local v20    # "l":I
    .local v6, "l":I
    if-ne v6, v14, :cond_84

    move-object v7, v4

    goto :goto_88

    .line 160
    :cond_84
    invoke-interface {v11, v1, v4}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_88
    move-object/from16 v8, v18

    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v8, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iput-object v7, v8, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 162
    :cond_8c
    invoke-virtual {v8}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_95

    .line 163
    goto :goto_a3

    .line 164
    :cond_95
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 165
    move-object v0, v8

    .line 166
    goto :goto_a3

    .line 157
    .end local v4    # "lout":Ljava/lang/Object;, "TT;"
    .end local v6    # "l":I
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v9    # "c":I
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v20    # "l":I
    :cond_9f
    move-object/from16 v8, v18

    move/from16 v6, v20

    .line 171
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v20    # "l":I
    .restart local v6    # "l":I
    .restart local v8    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_a3
    :goto_a3
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v4

    move v7, v4

    .local v7, "c":I
    and-int/2addr v4, v3

    if-eqz v4, :cond_ae

    .line 172
    move-object v10, v0

    move-object v12, v5

    goto :goto_bc

    .line 173
    :cond_ae
    or-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v7, v4}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 174
    if-eqz v0, :cond_b9

    .line 175
    move-object v5, v0

    .line 176
    :cond_b9
    move-object v0, v2

    .line 177
    move-object v10, v0

    move-object v12, v5

    .line 180
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v5    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v7    # "c":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v12    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_bc
    if-nez v10, :cond_c0

    .line 181
    goto/16 :goto_1b8

    .line 180
    :cond_c0
    move-object v7, v2

    move-object/from16 v18, v8

    .line 183
    .end local v1    # "pin":Ljava/lang/Object;, "TT;"
    .end local v2    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_c3
    if-eqz v12, :cond_c8

    .line 184
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 185
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_c8
    move-object/from16 v0, p0

    move/from16 v1, v22

    goto/16 :goto_15

    .line 144
    .end local v6    # "l":I
    .end local v19    # "h":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    :cond_ce
    move/from16 v22, v1

    move/from16 v19, v8

    move v6, v9

    move-object v0, v10

    .line 189
    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v6    # "l":I
    .restart local v19    # "h":I
    .restart local v22    # "th":I
    :goto_d4
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-eqz v1, :cond_df

    .line 190
    goto/16 :goto_1b7

    .line 191
    :cond_df
    and-int/lit8 v1, v2, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_e6

    move v1, v4

    goto :goto_eb

    .line 192
    :cond_e6
    if-le v6, v14, :cond_ea

    move v1, v5

    goto :goto_eb

    :cond_ea
    const/4 v1, 0x6

    :goto_eb
    nop

    .line 193
    .local v1, "state":I
    or-int v7, v2, v1

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_1a8

    .line 194
    nop

    .line 198
    .end local v2    # "b":I
    if-eq v1, v5, :cond_116

    .line 200
    if-ne v6, v14, :cond_fe

    .line 201
    aget-object v2, v13, v14

    .line 202
    .local v2, "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v7, v14, 0x1

    .local v7, "first":I
    goto :goto_101

    .line 205
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v7    # "first":I
    :cond_fe
    iget-object v2, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    .line 206
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    move v7, v6

    .line 208
    .restart local v7    # "first":I
    :goto_101
    move v8, v7

    .local v8, "i":I
    :goto_102
    move/from16 v9, v19

    .end local v19    # "h":I
    .local v9, "h":I
    if-ge v8, v9, :cond_114

    .line 209
    aget-object v10, v13, v8

    invoke-interface {v11, v2, v10}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    aput-object v10, v13, v8

    .line 208
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v9

    goto :goto_102

    .line 210
    .end local v7    # "first":I
    .end local v8    # "i":I
    :cond_114
    move-object v7, v2

    goto :goto_12e

    .line 211
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_116
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v15, :cond_12b

    .line 212
    aget-object v2, v13, v6

    .line 213
    .restart local v2    # "sum":Ljava/lang/Object;, "TT;"
    add-int/lit8 v7, v6, 0x1

    .local v7, "i":I
    :goto_11e
    if-ge v7, v9, :cond_129

    .line 214
    aget-object v8, v13, v7

    invoke-interface {v11, v2, v8}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_11e

    :cond_129
    move-object v7, v2

    .end local v7    # "i":I
    goto :goto_12e

    .line 217
    .end local v2    # "sum":Ljava/lang/Object;, "TT;"
    :cond_12b
    iget-object v2, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->in:Ljava/lang/Object;

    move-object v7, v2

    .line 218
    .local v7, "sum":Ljava/lang/Object;, "TT;"
    :goto_12e
    iput-object v7, v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    move-object v10, v0

    .line 220
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_131
    nop

    .line 221
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayPrefixHelpers$CumulateTask;

    .line 222
    .local v0, "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    move-object v2, v0

    .local v2, "par":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-nez v0, :cond_144

    .line 223
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_1b8

    .line 224
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->quietlyComplete()V

    goto/16 :goto_1b8

    .line 227
    :cond_144
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->getPendingCount()I

    move-result v8

    .line 228
    .local v8, "b":I
    and-int v12, v8, v1

    and-int/2addr v12, v4

    if-eqz v12, :cond_14f

    .line 229
    move-object v10, v2

    goto :goto_1a4

    .line 230
    :cond_14f
    and-int v12, v8, v1

    and-int/2addr v12, v5

    if-eqz v12, :cond_19b

    .line 232
    iget-object v12, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->left:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v16, v12

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v12, :cond_17a

    iget-object v12, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->right:Ljava/util/ArrayPrefixHelpers$CumulateTask;

    move-object/from16 v17, v12

    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    if-eqz v12, :cond_175

    .line 234
    move-object/from16 v12, v16

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget-object v3, v12, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    .line 235
    .local v3, "lout":Ljava/lang/Object;, "TT;"
    move-object/from16 v4, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    iget v5, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->hi:I

    if-ne v5, v15, :cond_16c

    move-object v5, v3

    goto :goto_172

    .line 236
    :cond_16c
    iget-object v5, v4, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    invoke-interface {v11, v3, v5}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_172
    iput-object v5, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->out:Ljava/lang/Object;

    goto :goto_17c

    .line 232
    .end local v3    # "lout":Ljava/lang/Object;, "TT;"
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_175
    move-object/from16 v12, v16

    move-object/from16 v4, v17

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    goto :goto_17c

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_17a
    move-object/from16 v12, v16

    .line 238
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :goto_17c
    and-int/lit8 v3, v8, 0x1

    if-nez v3, :cond_186

    iget v3, v2, Ljava/util/ArrayPrefixHelpers$CumulateTask;->lo:I

    if-ne v3, v14, :cond_186

    .line 239
    const/4 v3, 0x1

    goto :goto_187

    :cond_186
    const/4 v3, 0x0

    .line 240
    .local v3, "refork":I
    :goto_187
    or-int v4, v8, v1

    or-int/2addr v4, v3

    move v5, v4

    .local v5, "nextState":I
    if-eq v4, v8, :cond_193

    .line 241
    invoke-virtual {v2, v8, v5}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_19a

    .line 242
    :cond_193
    const/4 v1, 0x2

    .line 243
    move-object v10, v2

    .line 244
    if-eqz v3, :cond_19a

    .line 245
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 247
    .end local v3    # "refork":I
    .end local v5    # "nextState":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_19a
    goto :goto_1a4

    .line 248
    :cond_19b
    or-int v3, v8, v1

    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayPrefixHelpers$CumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_1a4

    .line 249
    goto :goto_1b8

    .line 250
    .end local v0    # "partmp":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v8    # "b":I
    :cond_1a4
    :goto_1a4
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_131

    .line 193
    .end local v7    # "sum":Ljava/lang/Object;, "TT;"
    .end local v9    # "h":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .local v2, "b":I
    .restart local v19    # "h":I
    :cond_1a8
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_d4

    .line 143
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v2    # "b":I
    .end local v6    # "l":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_1ad
    move/from16 v22, v1

    move v6, v9

    move-object v0, v10

    move v9, v8

    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v6    # "l":I
    .local v9, "h":I
    .restart local v22    # "th":I
    goto :goto_1b7

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v6    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .local v9, "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_1b3
    move/from16 v22, v1

    move v6, v9

    move-object v0, v10

    .line 253
    .end local v1    # "th":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v6    # "l":I
    .restart local v22    # "th":I
    :goto_1b7
    move-object v10, v0

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    :cond_1b8
    :goto_1b8
    return-void

    .line 140
    .end local v6    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$CumulateTask;, "Ljava/util/ArrayPrefixHelpers$CumulateTask<TT;>;"
    .end local v13    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v14    # "org":I
    .end local v15    # "fnc":I
    .end local v22    # "th":I
    :cond_1b9
    const/4 v0, 0x0

    throw v0
.end method
