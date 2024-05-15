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

    move-result-object v0

    iget v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1075
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2d

    .line 1078
    invoke-static {v0}, Lsun/invoke/util/Wrapper;->basicTypeChar(Ljava/lang/Class;)C

    move-result v1

    iput-char v1, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    .line 1080
    iput p3, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    .line 1082
    const/4 v1, 0x0

    iget v2, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {p2, v1, v2}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/invoke/Transformers$Spreader;->copyRange:Ldalvik/system/EmulatedStackFrame$Range;

    .line 1083
    return-void

    .line 1076
    :cond_2d
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Trailing argument must be an array."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
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
    if-ge v1, p3, :cond_59

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

    const/16 v5, 0x42

    if-eq v4, v5, :cond_53

    const/16 v5, 0x44

    if-eq v4, v5, :cond_4e

    const/16 v5, 0x46

    if-eq v4, v5, :cond_49

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_41

    const/16 v5, 0x53

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x49

    if-eq v4, v5, :cond_38

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_32

    .line 1208
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_56

    .line 1213
    :cond_32
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1207
    :cond_38
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_56

    .line 1210
    :cond_3c
    int-to-short v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_56

    .line 1206
    :cond_41
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_56

    .line 1211
    :cond_49
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_56

    .line 1212
    :cond_4e
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_56

    .line 1209
    :cond_53
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    .line 1202
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "b":B
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1216
    .end local v1    # "i":I
    :cond_59
    return-void
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
    if-ge v1, p3, :cond_50

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

    const/16 v5, 0x43

    if-eq v4, v5, :cond_4a

    const/16 v5, 0x44

    if-eq v4, v5, :cond_45

    const/16 v5, 0x46

    if-eq v4, v5, :cond_40

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_38

    const/16 v5, 0x49

    if-eq v4, v5, :cond_34

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_2e

    .line 1247
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_4d

    .line 1251
    :cond_2e
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1246
    :cond_34
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_4d

    .line 1245
    :cond_38
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_4d

    .line 1249
    :cond_40
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_4d

    .line 1250
    :cond_45
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_4d

    .line 1248
    :cond_4a
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    .line 1241
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "c":C
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1254
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method public static greylist-max-o spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 12
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
    if-ge v1, p3, :cond_2d

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

    const/16 v6, 0x44

    if-eq v5, v6, :cond_27

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_21

    .line 1279
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_2a

    .line 1281
    :cond_21
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1280
    :cond_27
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1275
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "d":D
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1284
    .end local v1    # "i":I
    :cond_2d
    return-void
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
    if-ge v1, p3, :cond_36

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

    const/16 v5, 0x44

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x46

    if-eq v4, v5, :cond_2b

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_25

    .line 1293
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_33

    .line 1296
    :cond_25
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1295
    :cond_2b
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_33

    .line 1294
    :cond_2f
    float-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1289
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":F
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1299
    .end local v1    # "i":I
    :cond_36
    return-void
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
    if-ge v1, p3, :cond_48

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

    const/16 v5, 0x44

    if-eq v4, v5, :cond_41

    const/16 v5, 0x46

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_34

    const/16 v5, 0x49

    if-eq v4, v5, :cond_30

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_2a

    .line 1174
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_45

    .line 1177
    :cond_2a
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1173
    :cond_30
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_45

    .line 1172
    :cond_34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_45

    .line 1175
    :cond_3c
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_45

    .line 1176
    :cond_41
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1168
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "j":I
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1180
    .end local v1    # "i":I
    :cond_48
    return-void
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
    if-ge v1, p3, :cond_3f

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

    const/16 v6, 0x44

    if-eq v5, v6, :cond_38

    const/16 v6, 0x46

    if-eq v5, v6, :cond_33

    const/16 v6, 0x4a

    if-eq v5, v6, :cond_2f

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_29

    .line 1189
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_3c

    .line 1193
    :cond_29
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1190
    :cond_2f
    invoke-virtual {p1, v3, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_3c

    .line 1191
    :cond_33
    long-to-float v5, v3

    invoke-virtual {p1, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_3c

    .line 1192
    :cond_38
    long-to-double v5, v3

    invoke-virtual {p1, v5, v6}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1185
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "l":J
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1196
    .end local v1    # "i":I
    :cond_3f
    return-void
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
    if-ge v1, p3, :cond_8c

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

    const/16 v5, 0x46

    if-eq v4, v5, :cond_7e

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_7a

    const/16 v5, 0x53

    if-eq v4, v5, :cond_6f

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_64

    const/16 v5, 0x49

    if-eq v4, v5, :cond_59

    const/16 v5, 0x4a

    if-eq v4, v5, :cond_4e

    packed-switch v4, :pswitch_data_8e

    goto :goto_88

    .line 1160
    :pswitch_2d
    move-object v4, v3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    goto :goto_88

    .line 1157
    :pswitch_38
    move-object v4, v3

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextChar(C)V

    goto :goto_88

    .line 1155
    :pswitch_43
    move-object v4, v3

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextByte(B)V

    goto :goto_88

    .line 1154
    :cond_4e
    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_88

    .line 1153
    :cond_59
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_88

    .line 1158
    :cond_64
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_88

    .line 1156
    :cond_6f
    move-object v4, v3

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_88

    .line 1152
    :cond_7a
    invoke-virtual {p1, v3, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_88

    .line 1159
    :cond_7e
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    .line 1148
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "o":Ljava/lang/Object;
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 1163
    .end local v1    # "i":I
    :cond_8c
    return-void

    nop

    :pswitch_data_8e
    .packed-switch 0x42
        :pswitch_43
        :pswitch_38
        :pswitch_2d
    .end packed-switch
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
    if-ge v1, p3, :cond_50

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

    const/16 v5, 0x44

    if-eq v4, v5, :cond_49

    const/16 v5, 0x46

    if-eq v4, v5, :cond_44

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_3c

    const/16 v5, 0x53

    if-eq v4, v5, :cond_38

    const/16 v5, 0x49

    if-eq v4, v5, :cond_34

    const/16 v5, 0x4a

    if-ne v4, v5, :cond_2e

    .line 1228
    int-to-long v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextLong(J)V

    goto :goto_4d

    .line 1232
    :cond_2e
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1227
    :cond_34
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextInt(I)V

    goto :goto_4d

    .line 1229
    :cond_38
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextShort(S)V

    goto :goto_4d

    .line 1226
    :cond_3c
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_4d

    .line 1230
    :cond_44
    int-to-float v4, v3

    invoke-virtual {p1, v4}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextFloat(F)V

    goto :goto_4d

    .line 1231
    :cond_49
    int-to-double v4, v3

    invoke-virtual {p1, v4, v5}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextDouble(D)V

    .line 1222
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "s":S
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1235
    .end local v1    # "i":I
    :cond_50
    return-void
.end method

.method public static greylist-max-o spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V
    .registers 11
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
    if-ge v1, p3, :cond_2d

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

    const/16 v5, 0x4c

    if-eq v4, v5, :cond_23

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_1d

    .line 1265
    invoke-virtual {p1, v3}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextBoolean(Z)V

    goto :goto_2a

    .line 1266
    :cond_1d
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1264
    :cond_23
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Ldalvik/system/EmulatedStackFrame$StackFrameWriter;->putNextReference(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1260
    .end local v2    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "z":Z
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1269
    .end local v1    # "i":I
    :cond_2d
    return-void
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

    if-ne v3, v4, :cond_cf

    .line 1109
    iget-object v4, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 1110
    .local v4, "type":Ljava/lang/invoke/MethodType;
    iget-char v5, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayTypeChar:C

    const/16 v6, 0x46

    if-eq v5, v6, :cond_ba

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_af

    const/16 v6, 0x53

    if-eq v5, v6, :cond_a4

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_99

    const/16 v6, 0x49

    if-eq v5, v6, :cond_8e

    const/16 v6, 0x4a

    if-eq v5, v6, :cond_83

    packed-switch v5, :pswitch_data_e6

    goto :goto_c5

    .line 1136
    :pswitch_62
    move-object v5, v2

    check-cast v5, [D

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([DLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    goto :goto_c5

    .line 1127
    :pswitch_6d
    move-object v5, v2

    check-cast v5, [C

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([CLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1128
    goto :goto_c5

    .line 1121
    :pswitch_78
    move-object v5, v2

    check-cast v5, [B

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([BLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1122
    goto :goto_c5

    .line 1118
    :cond_83
    move-object v5, v2

    check-cast v5, [J

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([JLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1119
    goto :goto_c5

    .line 1115
    :cond_8e
    move-object v5, v2

    check-cast v5, [I

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ILdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1116
    goto :goto_c5

    .line 1130
    :cond_99
    move-object v5, v2

    check-cast v5, [Z

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([ZLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1131
    goto :goto_c5

    .line 1124
    :cond_a4
    move-object v5, v2

    check-cast v5, [S

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([SLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1125
    goto :goto_c5

    .line 1112
    :cond_af
    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([Ljava/lang/Object;Ldalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1113
    goto :goto_c5

    .line 1133
    :cond_ba
    move-object v5, v2

    check-cast v5, [F

    iget v6, p0, Ljava/lang/invoke/Transformers$Spreader;->numArrayArgs:I

    iget v7, p0, Ljava/lang/invoke/Transformers$Spreader;->arrayOffset:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/invoke/Transformers$Spreader;->spreadArray([FLdalvik/system/EmulatedStackFrame$StackFrameWriter;Ljava/lang/invoke/MethodType;II)V

    .line 1134
    nop

    .line 1141
    :goto_c5
    iget-object v5, p0, Ljava/lang/invoke/Transformers$Spreader;->target:Ljava/lang/invoke/MethodHandle;

    invoke-polymorphic {v5, v0}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ldalvik/system/EmulatedStackFrame;)V

    .line 1142
    invoke-virtual {v0, p1}, Ldalvik/system/EmulatedStackFrame;->copyReturnValueTo(Ldalvik/system/EmulatedStackFrame;)V

    .line 1143
    return-void

    .line 1106
    .end local v4    # "type":Ljava/lang/invoke/MethodType;
    :cond_cf
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

    :pswitch_data_e6
    .packed-switch 0x42
        :pswitch_78
        :pswitch_6d
        :pswitch_62
    .end packed-switch
.end method
