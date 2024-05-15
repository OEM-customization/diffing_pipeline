.class public final enum Ljava/lang/annotation/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/annotation/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api CONSTRUCTOR:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api FIELD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api METHOD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api MODULE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api PACKAGE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE_USE:Ljava/lang/annotation/ElementType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 75
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    .line 78
    new-instance v1, Ljava/lang/annotation/ElementType;

    const-string v3, "FIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    .line 81
    new-instance v3, Ljava/lang/annotation/ElementType;

    const-string v5, "METHOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    .line 84
    new-instance v5, Ljava/lang/annotation/ElementType;

    const-string v7, "PARAMETER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    .line 87
    new-instance v7, Ljava/lang/annotation/ElementType;

    const-string v9, "CONSTRUCTOR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    .line 90
    new-instance v9, Ljava/lang/annotation/ElementType;

    const-string v11, "LOCAL_VARIABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    .line 93
    new-instance v11, Ljava/lang/annotation/ElementType;

    const-string v13, "ANNOTATION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    .line 96
    new-instance v13, Ljava/lang/annotation/ElementType;

    const-string v15, "PACKAGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    .line 103
    new-instance v15, Ljava/lang/annotation/ElementType;

    const-string v14, "TYPE_PARAMETER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    .line 110
    new-instance v14, Ljava/lang/annotation/ElementType;

    const-string v12, "TYPE_USE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    .line 117
    new-instance v12, Ljava/lang/annotation/ElementType;

    const-string v10, "MODULE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ljava/lang/annotation/ElementType;->MODULE:Ljava/lang/annotation/ElementType;

    .line 73
    const/16 v10, 0xb

    new-array v10, v10, [Ljava/lang/annotation/ElementType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/ElementType;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/annotation/ElementType;
    .registers 1

    .line 73
    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    invoke-virtual {v0}, [Ljava/lang/annotation/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/ElementType;

    return-object v0
.end method
