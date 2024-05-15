.class final Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
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
.field static final whitelist serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final blacklist a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final blacklist gran:I

.field final blacklist lbase:I

.field final blacklist lsize:I

.field final blacklist rbase:I

.field final blacklist rsize:I

.field final blacklist w:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V
    .registers 11
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;[TT;[TT;IIIIII",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local p2, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "w":[Ljava/lang/Object;, "[TT;"
    .local p10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 160
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 161
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .line 162
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .line 163
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 164
    iput-object p10, p0, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 165
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 26

    .line 168
    .local p0, "this":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move-object/from16 v11, p0

    iget-object v12, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->comparator:Ljava/util/Comparator;

    .line 169
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v13, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->a:[Ljava/lang/Object;

    .local v13, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v14, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->w:[Ljava/lang/Object;

    .line 170
    .local v14, "w":[Ljava/lang/Object;, "[TT;"
    iget v15, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lbase:I

    .local v15, "lb":I
    iget v0, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->lsize:I

    .local v0, "ln":I
    iget v10, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rbase:I

    .line 171
    .local v10, "rb":I
    iget v1, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->rsize:I

    .local v1, "rn":I
    iget v9, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->wbase:I

    .local v9, "k":I
    iget v8, v11, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->gran:I

    .line 172
    .local v8, "g":I
    if-eqz v13, :cond_e3

    if-eqz v14, :cond_e3

    if-ltz v15, :cond_e3

    if-ltz v10, :cond_e3

    if-ltz v9, :cond_e3

    if-eqz v12, :cond_e3

    move v7, v0

    move v6, v1

    .line 176
    .end local v0    # "ln":I
    .end local v1    # "rn":I
    .local v6, "rn":I
    .local v7, "ln":I
    :goto_22
    const/4 v5, 0x1

    if-lt v7, v6, :cond_4a

    .line 177
    if-gt v7, v8, :cond_28

    .line 178
    goto :goto_4d

    .line 179
    :cond_28
    move v0, v6

    .line 180
    .local v0, "rh":I
    ushr-int/lit8 v1, v7, 0x1

    move v2, v1

    .local v2, "lh":I
    add-int/2addr v1, v15

    aget-object v1, v13, v1

    .line 181
    .local v1, "split":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_30
    if-ge v3, v0, :cond_45

    .line 182
    add-int v4, v3, v0

    ushr-int/2addr v4, v5

    .line 183
    .local v4, "rm":I
    add-int v16, v4, v10

    aget-object v5, v13, v16

    invoke-interface {v12, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_41

    .line 184
    move v0, v4

    goto :goto_43

    .line 186
    :cond_41
    add-int/lit8 v3, v4, 0x1

    .line 187
    .end local v4    # "rm":I
    :goto_43
    const/4 v5, 0x1

    goto :goto_30

    .line 188
    .end local v1    # "split":Ljava/lang/Object;, "TT;"
    .end local v3    # "lo":I
    :cond_45
    move/from16 v16, v0

    move/from16 v18, v2

    goto :goto_a2

    .line 190
    .end local v0    # "rh":I
    .end local v2    # "lh":I
    :cond_4a
    if-gt v6, v8, :cond_81

    .line 191
    nop

    .line 211
    :goto_4d
    add-int v0, v15, v7

    .local v0, "lf":I
    add-int v1, v10, v6

    .line 212
    .local v1, "rf":I
    :goto_51
    if-ge v15, v0, :cond_6e

    if-ge v10, v1, :cond_6e

    .line 214
    aget-object v2, v13, v15

    move-object v3, v2

    .local v3, "al":Ljava/lang/Object;, "TT;"
    aget-object v4, v13, v10

    move-object v5, v4

    .local v5, "ar":Ljava/lang/Object;, "TT;"
    invoke-interface {v12, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_65

    .line 215
    add-int/lit8 v15, v15, 0x1

    move-object v2, v3

    .local v2, "t":Ljava/lang/Object;, "TT;"
    goto :goto_68

    .line 218
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :cond_65
    add-int/lit8 v10, v10, 0x1

    move-object v2, v5

    .line 220
    .restart local v2    # "t":Ljava/lang/Object;, "TT;"
    :goto_68
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "k":I
    .local v4, "k":I
    aput-object v2, v14, v9

    .line 221
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    .end local v3    # "al":Ljava/lang/Object;, "TT;"
    .end local v5    # "ar":Ljava/lang/Object;, "TT;"
    move v9, v4

    goto :goto_51

    .line 222
    .end local v4    # "k":I
    .restart local v9    # "k":I
    :cond_6e
    if-ge v10, v1, :cond_76

    .line 223
    sub-int v2, v1, v10

    invoke-static {v13, v10, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7d

    .line 224
    :cond_76
    if-ge v15, v0, :cond_7d

    .line 225
    sub-int v2, v0, v15

    invoke-static {v13, v15, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_7d
    :goto_7d
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->tryComplete()V

    .line 228
    return-void

    .line 192
    .end local v0    # "lf":I
    .end local v1    # "rf":I
    :cond_81
    move v0, v7

    .line 193
    .local v0, "lh":I
    ushr-int/lit8 v1, v6, 0x1

    move v2, v1

    .local v2, "rh":I
    add-int/2addr v1, v10

    aget-object v1, v13, v1

    .line 194
    .local v1, "split":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_89
    if-ge v3, v0, :cond_9e

    .line 195
    add-int v4, v3, v0

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    .line 196
    .local v4, "lm":I
    add-int v16, v4, v15

    aget-object v5, v13, v16

    invoke-interface {v12, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9b

    .line 197
    move v0, v4

    goto :goto_9d

    .line 199
    :cond_9b
    add-int/lit8 v3, v4, 0x1

    .line 200
    .end local v4    # "lm":I
    :goto_9d
    goto :goto_89

    .line 194
    :cond_9e
    move/from16 v18, v0

    move/from16 v16, v2

    .line 202
    .end local v0    # "lh":I
    .end local v1    # "split":Ljava/lang/Object;, "TT;"
    .end local v2    # "rh":I
    .end local v3    # "lo":I
    .local v16, "rh":I
    .local v18, "lh":I
    :goto_a2
    new-instance v19, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;

    add-int v4, v15, v18

    sub-int v5, v7, v18

    add-int v20, v10, v16

    sub-int v21, v6, v16

    add-int v0, v9, v18

    add-int v22, v0, v16

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v23, v13

    const/4 v13, 0x1

    .end local v13    # "a":[Ljava/lang/Object;, "[TT;"
    .local v23, "a":[Ljava/lang/Object;, "[TT;"
    move/from16 v17, v6

    .end local v6    # "rn":I
    .local v17, "rn":I
    move/from16 v6, v20

    move/from16 v20, v7

    .end local v7    # "ln":I
    .local v20, "ln":I
    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "g":I
    .local v21, "g":I
    move/from16 v8, v22

    move/from16 v22, v9

    .end local v9    # "k":I
    .local v22, "k":I
    move/from16 v9, v21

    move/from16 v24, v10

    .end local v10    # "rb":I
    .local v24, "rb":I
    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIIIILjava/util/Comparator;)V

    .line 205
    .local v0, "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v6, v16

    .line 206
    .end local v17    # "rn":I
    .restart local v6    # "rn":I
    move/from16 v7, v18

    .line 207
    .end local v20    # "ln":I
    .restart local v7    # "ln":I
    invoke-virtual {v11, v13}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->addToPendingCount(I)V

    .line 208
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 209
    .end local v0    # "m":Ljava/util/ArraysParallelSortHelpers$FJObject$Merger;, "Ljava/util/ArraysParallelSortHelpers$FJObject$Merger<TT;>;"
    move/from16 v8, v21

    move/from16 v9, v22

    move-object/from16 v13, v23

    move/from16 v10, v24

    goto/16 :goto_22

    .line 172
    .end local v6    # "rn":I
    .end local v7    # "ln":I
    .end local v16    # "rh":I
    .end local v18    # "lh":I
    .end local v21    # "g":I
    .end local v22    # "k":I
    .end local v23    # "a":[Ljava/lang/Object;, "[TT;"
    .end local v24    # "rb":I
    .local v0, "ln":I
    .local v1, "rn":I
    .restart local v8    # "g":I
    .restart local v9    # "k":I
    .restart local v10    # "rb":I
    .restart local v13    # "a":[Ljava/lang/Object;, "[TT;"
    :cond_e3
    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v24, v10

    move-object/from16 v23, v13

    .line 174
    .end local v8    # "g":I
    .end local v9    # "k":I
    .end local v10    # "rb":I
    .end local v13    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v21    # "g":I
    .restart local v22    # "k":I
    .restart local v23    # "a":[Ljava/lang/Object;, "[TT;"
    .restart local v24    # "rb":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
