.class final Ljava/lang/invoke/MethodTypeForm;
.super Ljava/lang/Object;
.source "MethodTypeForm.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ERASE:I = 0x1

.field public static final INTS:I = 0x4

.field public static final LONGS:I = 0x5

.field public static final NO_CHANGE:I = 0x0

.field public static final RAW_RETURN:I = 0x6

.field public static final UNWRAP:I = 0x3

.field public static final WRAP:I = 0x2


# instance fields
.field final argCounts:J

.field final argToSlotTable:[I

.field final basicType:Ljava/lang/invoke/MethodType;

.field final erasedType:Ljava/lang/invoke/MethodType;

.field final primCounts:J

.field final slotToArgTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/invoke/MethodTypeForm;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/invoke/MethodType;)V
    .registers 28
    .param p1, "erasedType"    # Ljava/lang/invoke/MethodType;

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    .line 106
    invoke-virtual/range {p1 .. p1}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v16

    .line 107
    .local v16, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    array-length v15, v0

    .line 108
    .local v15, "ptypeCount":I
    move v13, v15

    .line 109
    .local v13, "pslotCount":I
    const/16 v19, 0x1

    .line 110
    .local v19, "rtypeCount":I
    const/16 v17, 0x1

    .line 112
    .local v17, "rslotCount":I
    const/4 v4, 0x0

    .local v4, "argToSlotTab":[I
    const/16 v21, 0x0

    .line 115
    .local v21, "slotToArgTab":[I
    const/4 v11, 0x0

    .local v11, "pac":I
    const/4 v9, 0x0

    .local v9, "lac":I
    const/4 v12, 0x0

    .local v12, "prc":I
    const/4 v10, 0x0

    .line 116
    .local v10, "lrc":I
    move-object/from16 v7, v16

    .line 117
    .local v7, "epts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v5, v16

    .line 118
    .local v5, "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_21
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_5d

    .line 119
    aget-object v14, v16, v8

    .line 120
    .local v14, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Ljava/lang/Object;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_5a

    .line 121
    add-int/lit8 v11, v11, 0x1

    .line 122
    invoke-static {v14}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    .line 123
    .local v23, "w":Lsun/invoke/util/Wrapper;
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_40

    add-int/lit8 v9, v9, 0x1

    .line 124
    :cond_40
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v24

    if-eqz v24, :cond_5a

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    if-eq v14, v0, :cond_5a

    .line 125
    move-object/from16 v0, v16

    if-ne v5, v0, :cond_56

    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    check-cast v5, [Ljava/lang/Class;

    .line 127
    .restart local v5    # "bpts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_56
    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v5, v8

    .line 118
    .end local v23    # "w":Lsun/invoke/util/Wrapper;
    :cond_5a
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    .line 131
    .end local v14    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5d
    add-int v13, v15, v9

    .line 132
    invoke-virtual/range {p1 .. p1}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v18

    .line 133
    .local v18, "rt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v6, v18

    .line 134
    .local v6, "bt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_95

    .line 135
    const/4 v12, 0x1

    .line 136
    invoke-static/range {v18 .. v18}, Lsun/invoke/util/Wrapper;->forPrimitiveType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    .line 137
    .restart local v23    # "w":Lsun/invoke/util/Wrapper;
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_79

    const/4 v10, 0x1

    .line 138
    :cond_79
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isSubwordOrInt()Z

    move-result v24

    if-eqz v24, :cond_89

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_89

    .line 139
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 141
    :cond_89
    sget-object v24, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_de

    .line 142
    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 146
    .end local v23    # "w":Lsun/invoke/util/Wrapper;
    :cond_95
    :goto_95
    move-object/from16 v0, v16

    if-ne v0, v5, :cond_e1

    move-object/from16 v0, v18

    if-ne v6, v0, :cond_e1

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    .line 163
    if-eqz v9, :cond_146

    .line 164
    add-int v20, v15, v9

    .line 165
    .local v20, "slot":I
    add-int/lit8 v24, v20, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 166
    .local v21, "slotToArgTab":[I
    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v4, v0, [I

    .line 167
    .local v4, "argToSlotTab":[I
    const/16 v24, 0x0

    aput v20, v4, v24

    .line 168
    const/4 v8, 0x0

    :goto_ba
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_13a

    .line 169
    aget-object v14, v16, v8

    .line 170
    .restart local v14    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v14}, Lsun/invoke/util/Wrapper;->forBasicType(Ljava/lang/Class;)Lsun/invoke/util/Wrapper;

    move-result-object v23

    .line 171
    .restart local v23    # "w":Lsun/invoke/util/Wrapper;
    invoke-virtual/range {v23 .. v23}, Lsun/invoke/util/Wrapper;->isDoubleWord()Z

    move-result v24

    if-eqz v24, :cond_d1

    add-int/lit8 v20, v20, -0x1

    .line 172
    :cond_d1
    add-int/lit8 v20, v20, -0x1

    .line 173
    add-int/lit8 v24, v8, 0x1

    aput v24, v21, v20

    .line 174
    add-int/lit8 v24, v8, 0x1

    aput v20, v4, v24

    .line 168
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 144
    .end local v14    # "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "slot":I
    .local v4, "argToSlotTab":[I
    .local v21, "slotToArgTab":[I
    :cond_de
    add-int/lit8 v17, v10, 0x1

    goto :goto_95

    .line 149
    .end local v23    # "w":Lsun/invoke/util/Wrapper;
    :cond_e1
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-static {v6, v5, v0}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v22

    .line 152
    .local v22, "that":Ljava/lang/invoke/MethodTypeForm;
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_109

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_109

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 153
    :cond_109
    move-object/from16 v0, v22

    iget-wide v0, v0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    .line 154
    move-object/from16 v0, v22

    iget-wide v0, v0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    .line 155
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 156
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    .line 161
    return-void

    .line 176
    .end local v22    # "that":Ljava/lang/invoke/MethodTypeForm;
    .local v4, "argToSlotTab":[I
    .restart local v20    # "slot":I
    .local v21, "slotToArgTab":[I
    :cond_13a
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_176

    if-eqz v20, :cond_176

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 177
    .end local v20    # "slot":I
    .local v4, "argToSlotTab":[I
    .local v21, "slotToArgTab":[I
    :cond_146
    if-eqz v11, :cond_1a6

    .line 179
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_154

    if-eq v15, v13, :cond_154

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 180
    :cond_154
    invoke-static {v15}, Ljava/lang/invoke/MethodType;->genericMethodType(I)Ljava/lang/invoke/MethodType;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v22

    .line 181
    .restart local v22    # "that":Ljava/lang/invoke/MethodTypeForm;
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_16c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16c

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 182
    :cond_16c
    move-object/from16 v0, v22

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    move-object/from16 v21, v0

    .line 183
    .local v21, "slotToArgTab":[I
    move-object/from16 v0, v22

    iget-object v4, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 195
    .end local v22    # "that":Ljava/lang/invoke/MethodTypeForm;
    .local v4, "argToSlotTab":[I
    :cond_176
    invoke-static {v10, v12, v9, v11}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    .line 196
    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1, v13, v15}, Ljava/lang/invoke/MethodTypeForm;->pack(IIII)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    .line 197
    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    .line 198
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    .line 200
    const/16 v24, 0x100

    move/from16 v0, v24

    if-lt v13, v0, :cond_1ca

    const-string/jumbo v24, "too many arguments"

    invoke-static/range {v24 .. v24}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v24

    throw v24

    .line 185
    .local v4, "argToSlotTab":[I
    .local v21, "slotToArgTab":[I
    :cond_1a6
    move/from16 v20, v15

    .line 186
    .restart local v20    # "slot":I
    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 187
    .local v21, "slotToArgTab":[I
    add-int/lit8 v24, v15, 0x1

    move/from16 v0, v24

    new-array v4, v0, [I

    .line 188
    .local v4, "argToSlotTab":[I
    const/16 v24, 0x0

    aput v15, v4, v24

    .line 189
    const/4 v8, 0x0

    :goto_1bb
    if-ge v8, v15, :cond_176

    .line 190
    add-int/lit8 v20, v20, -0x1

    .line 191
    add-int/lit8 v24, v8, 0x1

    aput v24, v21, v20

    .line 192
    add-int/lit8 v24, v8, 0x1

    aput v20, v4, v24

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_1bb

    .line 203
    .end local v20    # "slot":I
    :cond_1ca
    sget-boolean v24, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v24, :cond_1e0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_1e0

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 208
    :cond_1e0
    return-void
.end method

.method private assertIsBasicType()Z
    .registers 4

    .prologue
    .line 85
    sget-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    iget-object v1, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    if-eq v0, v1, :cond_33

    new-instance v0, Ljava/lang/AssertionError;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "erasedType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != basicType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_33
    const/4 v0, 0x1

    return v0
.end method

.method static canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;
    .registers 5
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 312
    const-class v1, Ljava/lang/Object;

    if-ne p0, v1, :cond_6

    .line 356
    :cond_5
    :goto_5
    return-object v2

    .line 314
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 315
    packed-switch p1, :pswitch_data_60

    :pswitch_f
    goto :goto_5

    .line 322
    :pswitch_10
    const-class v1, Ljava/lang/Object;

    return-object v1

    .line 317
    :pswitch_13
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 318
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p0, :cond_5

    return-object v0

    .line 324
    .end local v0    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1a
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_28

    .line 326
    sparse-switch p1, :sswitch_data_70

    goto :goto_5

    .line 330
    :sswitch_22
    const-class v1, Ljava/lang/Void;

    return-object v1

    .line 328
    :sswitch_25
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 334
    :cond_28
    packed-switch p1, :pswitch_data_7a

    :pswitch_2b
    goto :goto_5

    .line 336
    :pswitch_2c
    invoke-static {p0}, Lsun/invoke/util/Wrapper;->asWrapperType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 338
    :pswitch_31
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_39

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3a

    .line 339
    :cond_39
    return-object v2

    .line 340
    :cond_3a
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_41

    .line 341
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 342
    :cond_41
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 344
    :pswitch_44
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_49

    .line 345
    return-object v2

    .line 346
    :cond_49
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 348
    :pswitch_4c
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_54

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_55

    .line 350
    :cond_54
    return-object v2

    .line 349
    :cond_55
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_54

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v1, :cond_54

    .line 352
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v1

    .line 315
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 326
    :sswitch_data_70
    .sparse-switch
        0x2 -> :sswitch_22
        0x6 -> :sswitch_25
    .end sparse-switch

    .line 334
    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_2b
        :pswitch_31
        :pswitch_44
        :pswitch_4c
    .end packed-switch
.end method

.method public static canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;
    .registers 8
    .param p0, "mt"    # Ljava/lang/invoke/MethodType;
    .param p1, "howRet"    # I
    .param p2, "howArgs"    # I

    .prologue
    const/4 v4, 0x0

    .line 293
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    .line 294
    .local v1, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v1, p2}, Ljava/lang/invoke/MethodTypeForm;->canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;

    move-result-object v0

    .line 295
    .local v0, "ptc":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v3

    .line 296
    .local v3, "rtype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    .line 297
    .local v2, "rtc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_16

    if-nez v2, :cond_16

    .line 299
    return-object v4

    .line 302
    :cond_16
    if-nez v2, :cond_19

    move-object v2, v3

    .line 303
    :cond_19
    if-nez v0, :cond_1c

    move-object v0, v1

    .line 304
    :cond_1c
    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Ljava/lang/invoke/MethodType;->makeImpl(Ljava/lang/Class;[Ljava/lang/Class;Z)Ljava/lang/invoke/MethodType;

    move-result-object v4

    return-object v4
.end method

.method static canonicalizeAll([Ljava/lang/Class;I)[Ljava/lang/Class;
    .registers 7
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;I)[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "ts":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 364
    .local v1, "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, p0

    .local v3, "imax":I
    const/4 v2, 0x0

    .end local v1    # "cs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_1f

    .line 365
    aget-object v4, p0, v2

    invoke-static {v4, p1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    .line 366
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v4, :cond_10

    .line 367
    const/4 v0, 0x0

    .line 368
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    if-eqz v0, :cond_1c

    .line 369
    if-nez v1, :cond_1a

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    .line 371
    :cond_1a
    aput-object v0, v1, v2

    .line 364
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 374
    :cond_1f
    return-object v1
.end method

.method static findForm(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodTypeForm;
    .registers 3
    .param p0, "mt"    # Ljava/lang/invoke/MethodType;

    .prologue
    const/4 v1, 0x1

    .line 266
    invoke-static {p0, v1, v1}, Ljava/lang/invoke/MethodTypeForm;->canonicalize(Ljava/lang/invoke/MethodType;II)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 267
    .local v0, "erased":Ljava/lang/invoke/MethodType;
    if-nez v0, :cond_d

    .line 269
    new-instance v1, Ljava/lang/invoke/MethodTypeForm;

    invoke-direct {v1, p0}, Ljava/lang/invoke/MethodTypeForm;-><init>(Ljava/lang/invoke/MethodType;)V

    return-object v1

    .line 272
    :cond_d
    invoke-virtual {v0}, Ljava/lang/invoke/MethodType;->form()Ljava/lang/invoke/MethodTypeForm;

    move-result-object v1

    return-object v1
.end method

.method private static pack(IIII)J
    .registers 10
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I
    .param p3, "d"    # I

    .prologue
    .line 211
    sget-boolean v4, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v4, :cond_13

    or-int v4, p0, p1

    or-int/2addr v4, p2

    or-int/2addr v4, p3

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_13

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 212
    :cond_13
    shl-int/lit8 v4, p0, 0x10

    or-int/2addr v4, p1

    int-to-long v0, v4

    .local v0, "hw":J
    shl-int/lit8 v4, p2, 0x10

    or-int/2addr v4, p3

    int-to-long v2, v4

    .line 213
    .local v2, "lw":J
    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v4, v2

    return-wide v4
.end method

.method private static unpack(JI)C
    .registers 5
    .param p0, "packed"    # J
    .param p2, "word"    # I

    .prologue
    .line 216
    sget-boolean v0, Ljava/lang/invoke/MethodTypeForm;->-assertionsDisabled:Z

    if-nez v0, :cond_d

    const/4 v0, 0x3

    if-le p2, v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_d
    rsub-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method public argSlotToParameter(I)I
    .registers 3
    .param p1, "argSlot"    # I

    .prologue
    .line 262
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->slotToArgTable:[I

    aget v0, v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public basicType()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->basicType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public erasedType()Ljava/lang/invoke/MethodType;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    return-object v0
.end method

.method public hasLongPrimitives()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveParameterCount()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->longPrimitiveReturnCount()I

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public hasNonVoidPrimitives()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    iget-wide v2, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    return v1

    .line 249
    :cond_b
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveParameterCount()I

    move-result v2

    if-eqz v2, :cond_12

    return v0

    .line 250
    :cond_12
    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->primitiveReturnCount()I

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Ljava/lang/invoke/MethodTypeForm;->returnCount()I

    move-result v2

    if-eqz v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method public hasPrimitives()Z
    .registers 5

    .prologue
    .line 245
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public longPrimitiveParameterCount()I
    .registers 4

    .prologue
    .line 236
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public longPrimitiveReturnCount()I
    .registers 4

    .prologue
    .line 242
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterCount()I
    .registers 4

    .prologue
    .line 221
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterSlotCount()I
    .registers 4

    .prologue
    .line 224
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public parameterToArgSlot(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 256
    iget-object v0, p0, Ljava/lang/invoke/MethodTypeForm;->argToSlotTable:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public primitiveParameterCount()I
    .registers 4

    .prologue
    .line 233
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public primitiveReturnCount()I
    .registers 4

    .prologue
    .line 239
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->primCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public returnCount()I
    .registers 4

    .prologue
    .line 227
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public returnSlotCount()I
    .registers 4

    .prologue
    .line 230
    iget-wide v0, p0, Ljava/lang/invoke/MethodTypeForm;->argCounts:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodTypeForm;->unpack(JI)C

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Form"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/invoke/MethodTypeForm;->erasedType:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
