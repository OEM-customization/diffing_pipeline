.class Ljava/lang/invoke/Transformers$Spreader;
.super Ljava/lang/invoke/Transformers$Transformer;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/Transformers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spreader"
.end annotation


# instance fields
.field private final greylist-max-o arrayOffset:I

.field private final greylist-max-o arrayTypeChar:C

.field private final greylist-max-o copyRange:Ldalvik/system/EmulatedStackFrame$Range;

.field private final greylist-max-o numArrayArgs:I

.field private final greylist-max-o target:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;I)V
    .registers 7
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;
    .param p2, "spreaderType"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArrayArgs"    # I

    .line 1067
    invoke-direct {p0, p2}, Ljava/lang/invoke/Transformers$Transformer;-><init>(Ljava/lang/invoke/MethodType;)V

    .line 1068
    iput-object p1, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    .line 1071
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    .line 1074
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1075
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_29

    .line 1078
    invoke-static {v1}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v2

    iput-char v2, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    .line 1080
    iput p3, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    .line 1082
    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1083
    return-void

    .line 1076
    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Trailing argument must be an array."

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static greylist-max-o spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [B
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1201
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1202
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_40

    .line 1203
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1204
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-byte v3, p0, v1

    .line 1205
    .local v3, "b":B
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_42

    .line 1213
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1210
    :sswitch_1a
    int-to-short v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_3d

    .line 1206
    :sswitch_1f
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_3d

    .line 1208
    :sswitch_27
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_3d

    .line 1207
    :sswitch_2c
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_3d

    .line 1211
    :sswitch_30
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_3d

    .line 1212
    :sswitch_35
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_3d

    .line 1209
    :sswitch_3a
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1202
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "b":B
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1216
    .end local v1    # "i":I
    :cond_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        0x42 -> :sswitch_3a
        0x44 -> :sswitch_35
        0x46 -> :sswitch_30
        0x49 -> :sswitch_2c
        0x4a -> :sswitch_27
        0x4c -> :sswitch_1f
        0x53 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [C
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1240
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1241
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_3b

    .line 1242
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1243
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-char v3, p0, v1

    .line 1244
    .local v3, "c":C
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_3c

    .line 1251
    :pswitch_14
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1245
    :pswitch_1a
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_38

    .line 1247
    :pswitch_22
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_38

    .line 1246
    :pswitch_27
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_38

    .line 1249
    :pswitch_2b
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_38

    .line 1250
    :pswitch_30
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_38

    .line 1248
    :pswitch_35
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1241
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "c":C
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1254
    .end local v1    # "i":I
    :cond_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x43
        :pswitch_35
        :pswitch_30
        :pswitch_14
        :pswitch_2b
        :pswitch_14
        :pswitch_14
        :pswitch_27
        :pswitch_22
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method public static greylist-max-o spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [D
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1274
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1275
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_28

    .line 1276
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1277
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-wide v3, p0, v1

    .line 1278
    .local v3, "d":D
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    sparse-switch v5, :sswitch_data_2a

    .line 1281
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1279
    :sswitch_1a
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_25

    .line 1280
    :sswitch_22
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1275
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "d":D
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1284
    .end local v1    # "i":I
    :cond_28
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x44 -> :sswitch_22
        0x4c -> :sswitch_1a
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [F
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1288
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1289
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_2d

    .line 1290
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1291
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget v3, p0, v1

    .line 1292
    .local v3, "f":F
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_2e

    .line 1296
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1293
    :sswitch_1a
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2a

    .line 1295
    :sswitch_22
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_2a

    .line 1294
    :sswitch_26
    float-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1289
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":F
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1299
    .end local v1    # "i":I
    :cond_2d
    return-void

    :sswitch_data_2e
    .sparse-switch
        0x44 -> :sswitch_26
        0x46 -> :sswitch_22
        0x4c -> :sswitch_1a
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [I
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1167
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1168
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_37

    .line 1169
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1170
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget v3, p0, v1

    .line 1171
    .local v3, "j":I
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    packed-switch v4, :pswitch_data_38

    .line 1177
    :pswitch_14
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1172
    :pswitch_1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_34

    .line 1174
    :pswitch_22
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_34

    .line 1173
    :pswitch_27
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_34

    .line 1175
    :pswitch_2b
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_34

    .line 1176
    :pswitch_30
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1168
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "j":I
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1180
    .end local v1    # "i":I
    :cond_37
    return-void

    :pswitch_data_38
    .packed-switch 0x44
        :pswitch_30
        :pswitch_14
        :pswitch_2b
        :pswitch_14
        :pswitch_14
        :pswitch_27
        :pswitch_22
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method public static greylist-max-o spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 12
    .param p0, "array"    # [J
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1184
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1185
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_32

    .line 1186
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1187
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-wide v3, p0, v1

    .line 1188
    .local v3, "l":J
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v5

    sparse-switch v5, :sswitch_data_34

    .line 1193
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1189
    :sswitch_1a
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2f

    .line 1190
    :sswitch_22
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_2f

    .line 1191
    :sswitch_26
    long-to-float v5, v3

    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_2f

    .line 1192
    :sswitch_2b
    long-to-double v5, v3

    invoke-virtual {p1, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1185
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "l":J
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1196
    .end local v1    # "i":I
    :cond_32
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x44 -> :sswitch_2b
        0x46 -> :sswitch_26
        0x4a -> :sswitch_22
        0x4c -> :sswitch_1a
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1147
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1148
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_73

    .line 1149
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1150
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v3, p0, v1

    .line 1151
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_74

    goto :goto_70

    .line 1158
    :sswitch_15
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_70

    .line 1156
    :sswitch_20
    move-object v4, v3

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_70

    .line 1152
    :sswitch_2b
    invoke-virtual {p1, v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_70

    .line 1154
    :sswitch_2f
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_70

    .line 1153
    :sswitch_3a
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_70

    .line 1159
    :sswitch_45
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_70

    .line 1160
    :sswitch_50
    move-object v4, v3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_70

    .line 1157
    :sswitch_5b
    move-object v4, v3

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_70

    .line 1155
    :sswitch_66
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1148
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1163
    .end local v1    # "i":I
    :cond_73
    return-void

    :sswitch_data_74
    .sparse-switch
        0x42 -> :sswitch_66
        0x43 -> :sswitch_5b
        0x44 -> :sswitch_50
        0x46 -> :sswitch_45
        0x49 -> :sswitch_3a
        0x4a -> :sswitch_2f
        0x4c -> :sswitch_2b
        0x53 -> :sswitch_20
        0x5a -> :sswitch_15
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
    .param p0, "array"    # [S
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1221
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1222
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_3b

    .line 1223
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1224
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-short v3, p0, v1

    .line 1225
    .local v3, "s":S
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_3c

    .line 1232
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1229
    :sswitch_1a
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_38

    .line 1226
    :sswitch_1e
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_38

    .line 1228
    :sswitch_26
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_38

    .line 1227
    :sswitch_2b
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_38

    .line 1230
    :sswitch_2f
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_38

    .line 1231
    :sswitch_34
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1222
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "s":S
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1235
    .end local v1    # "i":I
    :cond_3b
    return-void

    :sswitch_data_3c
    .sparse-switch
        0x44 -> :sswitch_34
        0x46 -> :sswitch_2f
        0x49 -> :sswitch_2b
        0x4a -> :sswitch_26
        0x4c -> :sswitch_1e
        0x53 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static greylist-max-o spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 10
    .param p0, "array"    # [Z
    .param p1, "writer"    # Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .param p3, "numArgs"    # I
    .param p4, "offset"    # I

    .line 1259
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    .line 1260
    .local v0, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p3, :cond_28

    .line 1261
    add-int v2, v1, p4

    aget-object v2, v0, v2

    .line 1262
    .local v2, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-boolean v3, p0, v1

    .line 1263
    .local v3, "z":Z
    invoke-static {v2}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v4

    sparse-switch v4, :sswitch_data_2a

    .line 1266
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1265
    :sswitch_1a
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_25

    .line 1264
    :sswitch_1e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1260
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "z":Z
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1269
    .end local v1    # "i":I
    :cond_28
    return-void

    nop

    :sswitch_data_2a
    .sparse-switch
        0x4c -> :sswitch_1e
        0x5a -> :sswitch_1a
    .end sparse-switch
.end method


# virtual methods
.method public greylist-max-o transform(Ldalvik/system/EmulatedStackFrame;)V
    .registers 10
    .param p1, "callerFrame"    # Ldalvik/system/EmulatedStackFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1088
    iget-object v0, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/EmulatedStackFrame;->create(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame;

    move-result-object v0

    .line 1091
    .local v0, "targetFrame":Ldalvik/system/EmulatedStackFrame;
    iget-object v1, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Ldalvik/system/EmulatedStackFrame;->copyRangeTo(Ldalvik/system/EmulatedStackFrame;Ldalvik/system/EmulatedStackFrame$Range;II)V

    .line 1095
    new-instance v1, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;

    invoke-direct {v1}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;-><init>()V

    .line 1096
    .local v1, "writer":Ldalvik/system/EmulatedStackFrame$StackFrameWriter;
    iget v2, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    iget-object v3, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v3, v3, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    iget-object v4, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v4, v4, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    invoke-virtual {v1, v0, v2, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->attach(Ldalvik/system/EmulatedStackFrame;III)Ldalvik/system/EmulatedStackFrame$StackFrameAccessor;

    .line 1102
    iget-object v2, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    iget v2, v2, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    .line 1103
    invoke-virtual {p0}, Ljava/lang/invoke/Transformers$Spreader;->type()Ljava/lang/invoke/MethodType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    iget v4, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v3, v3, v4

    .line 1102
    invoke-virtual {p1, v2, v3}, Ldalvik/system/EmulatedStackFrame;->getReference(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 1104
    .local v2, "arrayObj":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 1105
    .local v3, "arrayLength":I
    iget v4, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    if-ne v3, v4, :cond_b7

    .line 1109
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 1110
    .local v4, "type":Ljava/lang/invoke/MethodType;
    iget-char v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    sparse-switch v5, :sswitch_data_ce

    goto :goto_ad

    .line 1130
    :sswitch_4a
    move-object v5, v2

    check-cast v5, [Z

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1131
    goto :goto_ad

    .line 1124
    :sswitch_55
    move-object v5, v2

    check-cast v5, [S

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1125
    goto :goto_ad

    .line 1112
    :sswitch_60
    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1113
    goto :goto_ad

    .line 1118
    :sswitch_6b
    move-object v5, v2

    check-cast v5, [J

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1119
    goto :goto_ad

    .line 1115
    :sswitch_76
    move-object v5, v2

    check-cast v5, [I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1116
    goto :goto_ad

    .line 1133
    :sswitch_81
    move-object v5, v2

    check-cast v5, [F

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1134
    goto :goto_ad

    .line 1136
    :sswitch_8c
    move-object v5, v2

    check-cast v5, [D

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_ad

    .line 1127
    :sswitch_97
    move-object v5, v2

    check-cast v5, [C

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1128
    goto :goto_ad

    .line 1121
    :sswitch_a2
    move-object v5, v2

    check-cast v5, [B

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1122
    nop

    .line 1141
    :goto_ad
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1142
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1143
    return-void

    .line 1106
    .end local v4    # "type":Ljava/lang/invoke/MethodType;
    :cond_b7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid array length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_data_ce
    .sparse-switch
        0x42 -> :sswitch_a2
        0x43 -> :sswitch_97
        0x44 -> :sswitch_8c
        0x46 -> :sswitch_81
        0x49 -> :sswitch_76
        0x4a -> :sswitch_6b
        0x4c -> :sswitch_60
        0x53 -> :sswitch_55
        0x5a -> :sswitch_4a
    .end sparse-switch
.end method
