.class public final enum Lsun/net/ftp/FtpReplyCode;
.super Ljava/lang/Enum;
.source "FtpReplyCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/net/ftp/FtpReplyCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

.field public static final enum blacklist UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 55

    .line 35
    new-instance v0, Lsun/net/ftp/FtpReplyCode;

    const-string v1, "RESTART_MARKER"

    const/4 v2, 0x0

    const/16 v3, 0x6e

    invoke-direct {v0, v1, v2, v3}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lsun/net/ftp/FtpReplyCode;->RESTART_MARKER:Lsun/net/ftp/FtpReplyCode;

    .line 36
    new-instance v1, Lsun/net/ftp/FtpReplyCode;

    const-string v3, "SERVICE_READY_IN"

    const/4 v4, 0x1

    const/16 v5, 0x78

    invoke-direct {v1, v3, v4, v5}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY_IN:Lsun/net/ftp/FtpReplyCode;

    .line 37
    new-instance v3, Lsun/net/ftp/FtpReplyCode;

    const-string v5, "DATA_CONNECTION_ALREADY_OPEN"

    const/4 v6, 0x2

    const/16 v7, 0x7d

    invoke-direct {v3, v5, v6, v7}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_ALREADY_OPEN:Lsun/net/ftp/FtpReplyCode;

    .line 38
    new-instance v5, Lsun/net/ftp/FtpReplyCode;

    const-string v7, "FILE_STATUS_OK"

    const/4 v8, 0x3

    const/16 v9, 0x96

    invoke-direct {v5, v7, v8, v9}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS_OK:Lsun/net/ftp/FtpReplyCode;

    .line 39
    new-instance v7, Lsun/net/ftp/FtpReplyCode;

    const-string v9, "COMMAND_OK"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lsun/net/ftp/FtpReplyCode;->COMMAND_OK:Lsun/net/ftp/FtpReplyCode;

    .line 40
    new-instance v9, Lsun/net/ftp/FtpReplyCode;

    const-string v11, "NOT_IMPLEMENTED"

    const/4 v12, 0x5

    const/16 v13, 0xca

    invoke-direct {v9, v11, v12, v13}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED:Lsun/net/ftp/FtpReplyCode;

    .line 41
    new-instance v11, Lsun/net/ftp/FtpReplyCode;

    const-string v13, "SYSTEM_STATUS"

    const/4 v14, 0x6

    const/16 v15, 0xd3

    invoke-direct {v11, v13, v14, v15}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lsun/net/ftp/FtpReplyCode;->SYSTEM_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 42
    new-instance v13, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "DIRECTORY_STATUS"

    const/4 v14, 0x7

    const/16 v12, 0xd4

    invoke-direct {v13, v15, v14, v12}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lsun/net/ftp/FtpReplyCode;->DIRECTORY_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 43
    new-instance v12, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "FILE_STATUS"

    const/16 v14, 0x8

    const/16 v10, 0xd5

    invoke-direct {v12, v15, v14, v10}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    .line 44
    new-instance v10, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "HELP_MESSAGE"

    const/16 v14, 0x9

    const/16 v8, 0xd6

    invoke-direct {v10, v15, v14, v8}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lsun/net/ftp/FtpReplyCode;->HELP_MESSAGE:Lsun/net/ftp/FtpReplyCode;

    .line 45
    new-instance v8, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "NAME_SYSTEM_TYPE"

    const/16 v14, 0xa

    const/16 v6, 0xd7

    invoke-direct {v8, v15, v14, v6}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lsun/net/ftp/FtpReplyCode;->NAME_SYSTEM_TYPE:Lsun/net/ftp/FtpReplyCode;

    .line 46
    new-instance v6, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "SERVICE_READY"

    const/16 v14, 0xb

    const/16 v4, 0xdc

    invoke-direct {v6, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lsun/net/ftp/FtpReplyCode;->SERVICE_READY:Lsun/net/ftp/FtpReplyCode;

    .line 47
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "SERVICE_CLOSING"

    const/16 v14, 0xc

    const/16 v2, 0xdd

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->SERVICE_CLOSING:Lsun/net/ftp/FtpReplyCode;

    .line 48
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "DATA_CONNECTION_OPEN"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0xe1

    invoke-direct {v2, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->DATA_CONNECTION_OPEN:Lsun/net/ftp/FtpReplyCode;

    .line 49
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "CLOSING_DATA_CONNECTION"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0xe2

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    .line 50
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "ENTERING_PASSIVE_MODE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0xe3

    invoke-direct {v2, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->ENTERING_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    .line 51
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "ENTERING_EXT_PASSIVE_MODE"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0xe5

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->ENTERING_EXT_PASSIVE_MODE:Lsun/net/ftp/FtpReplyCode;

    .line 52
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "LOGGED_IN"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0xe6

    invoke-direct {v2, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 53
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "SECURELY_LOGGED_IN"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0xe8

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->SECURELY_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 54
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "SECURITY_EXCHANGE_OK"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0xea

    invoke-direct {v2, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_OK:Lsun/net/ftp/FtpReplyCode;

    .line 55
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "SECURITY_EXCHANGE_COMPLETE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0xeb

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->SECURITY_EXCHANGE_COMPLETE:Lsun/net/ftp/FtpReplyCode;

    .line 56
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "FILE_ACTION_OK"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0xfa

    invoke-direct {v2, v15, v14, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_OK:Lsun/net/ftp/FtpReplyCode;

    .line 57
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v15, "PATHNAME_CREATED"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x101

    invoke-direct {v4, v15, v14, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->PATHNAME_CREATED:Lsun/net/ftp/FtpReplyCode;

    .line 58
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_PASSWORD"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x14b

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    .line 59
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_ACCOUNT"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x14c

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    .line 60
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_ADAT"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x14e

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_ADAT:Lsun/net/ftp/FtpReplyCode;

    .line 61
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_MORE_ADAT"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x14f

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_MORE_ADAT:Lsun/net/ftp/FtpReplyCode;

    .line 62
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "FILE_ACTION_PENDING"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x15e

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_PENDING:Lsun/net/ftp/FtpReplyCode;

    .line 63
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "SERVICE_NOT_AVAILABLE"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1a5

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->SERVICE_NOT_AVAILABLE:Lsun/net/ftp/FtpReplyCode;

    .line 64
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "CANT_OPEN_DATA_CONNECTION"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1a9

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->CANT_OPEN_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    .line 65
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "CONNECTION_CLOSED"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1aa

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->CONNECTION_CLOSED:Lsun/net/ftp/FtpReplyCode;

    .line 66
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_SECURITY_RESOURCE"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1af

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->NEED_SECURITY_RESOURCE:Lsun/net/ftp/FtpReplyCode;

    .line 67
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "FILE_ACTION_NOT_TAKEN"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x1c2

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->FILE_ACTION_NOT_TAKEN:Lsun/net/ftp/FtpReplyCode;

    .line 68
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "ACTION_ABORTED"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x1c3

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->ACTION_ABORTED:Lsun/net/ftp/FtpReplyCode;

    .line 69
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "INSUFFICIENT_STORAGE"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x1c4

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->INSUFFICIENT_STORAGE:Lsun/net/ftp/FtpReplyCode;

    .line 70
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "COMMAND_UNRECOGNIZED"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x1f4

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->COMMAND_UNRECOGNIZED:Lsun/net/ftp/FtpReplyCode;

    .line 71
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "INVALID_PARAMETER"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x1f5

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->INVALID_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    .line 72
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "BAD_SEQUENCE"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x1f7

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    .line 73
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NOT_IMPLEMENTED_FOR_PARAMETER"

    const/16 v15, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x1f8

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->NOT_IMPLEMENTED_FOR_PARAMETER:Lsun/net/ftp/FtpReplyCode;

    .line 74
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NOT_LOGGED_IN"

    const/16 v15, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x212

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->NOT_LOGGED_IN:Lsun/net/ftp/FtpReplyCode;

    .line 75
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "NEED_ACCOUNT_FOR_STORING"

    const/16 v15, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x214

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT_FOR_STORING:Lsun/net/ftp/FtpReplyCode;

    .line 76
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "PROT_LEVEL_DENIED"

    const/16 v15, 0x29

    move-object/from16 v44, v4

    const/16 v4, 0x215

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_DENIED:Lsun/net/ftp/FtpReplyCode;

    .line 77
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "REQUEST_DENIED"

    const/16 v15, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x216

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->REQUEST_DENIED:Lsun/net/ftp/FtpReplyCode;

    .line 78
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "FAILED_SECURITY_CHECK"

    const/16 v15, 0x2b

    move-object/from16 v46, v4

    const/16 v4, 0x217

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->FAILED_SECURITY_CHECK:Lsun/net/ftp/FtpReplyCode;

    .line 79
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "UNSUPPORTED_PROT_LEVEL"

    const/16 v15, 0x2c

    move-object/from16 v47, v2

    const/16 v2, 0x218

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->UNSUPPORTED_PROT_LEVEL:Lsun/net/ftp/FtpReplyCode;

    .line 80
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY"

    const/16 v15, 0x2d

    move-object/from16 v48, v4

    const/16 v4, 0x219

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->PROT_LEVEL_NOT_SUPPORTED_BY_SECURITY:Lsun/net/ftp/FtpReplyCode;

    .line 81
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "FILE_UNAVAILABLE"

    const/16 v15, 0x2e

    move-object/from16 v49, v2

    const/16 v2, 0x226

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    .line 82
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "PAGE_TYPE_UNKNOWN"

    const/16 v15, 0x2f

    move-object/from16 v50, v4

    const/16 v4, 0x227

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->PAGE_TYPE_UNKNOWN:Lsun/net/ftp/FtpReplyCode;

    .line 83
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "EXCEEDED_STORAGE"

    const/16 v15, 0x30

    move-object/from16 v51, v2

    const/16 v2, 0x228

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->EXCEEDED_STORAGE:Lsun/net/ftp/FtpReplyCode;

    .line 84
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "FILE_NAME_NOT_ALLOWED"

    const/16 v15, 0x31

    move-object/from16 v52, v4

    const/16 v4, 0x229

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_NAME_NOT_ALLOWED:Lsun/net/ftp/FtpReplyCode;

    .line 85
    new-instance v4, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "PROTECTED_REPLY"

    const/16 v15, 0x32

    move-object/from16 v53, v2

    const/16 v2, 0x277

    invoke-direct {v4, v14, v15, v2}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->PROTECTED_REPLY:Lsun/net/ftp/FtpReplyCode;

    .line 86
    new-instance v2, Lsun/net/ftp/FtpReplyCode;

    const-string v14, "UNKNOWN_ERROR"

    const/16 v15, 0x33

    move-object/from16 v54, v4

    const/16 v4, 0x3e7

    invoke-direct {v2, v14, v15, v4}, Lsun/net/ftp/FtpReplyCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    .line 33
    const/16 v4, 0x34

    new-array v4, v4, [Lsun/net/ftp/FtpReplyCode;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v38, v4, v0

    const/16 v0, 0x23

    aput-object v39, v4, v0

    const/16 v0, 0x24

    aput-object v40, v4, v0

    const/16 v0, 0x25

    aput-object v41, v4, v0

    const/16 v0, 0x26

    aput-object v42, v4, v0

    const/16 v0, 0x27

    aput-object v43, v4, v0

    const/16 v0, 0x28

    aput-object v44, v4, v0

    const/16 v0, 0x29

    aput-object v45, v4, v0

    const/16 v0, 0x2a

    aput-object v46, v4, v0

    const/16 v0, 0x2b

    aput-object v47, v4, v0

    const/16 v0, 0x2c

    aput-object v48, v4, v0

    const/16 v0, 0x2d

    aput-object v49, v4, v0

    const/16 v0, 0x2e

    aput-object v50, v4, v0

    const/16 v0, 0x2f

    aput-object v51, v4, v0

    const/16 v0, 0x30

    aput-object v52, v4, v0

    const/16 v0, 0x31

    aput-object v53, v4, v0

    const/16 v0, 0x32

    aput-object v54, v4, v0

    const/16 v0, 0x33

    aput-object v2, v4, v0

    sput-object v4, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    .line 91
    return-void
.end method

.method public static blacklist find(I)Lsun/net/ftp/FtpReplyCode;
    .registers 6
    .param p0, "v"    # I

    .line 241
    invoke-static {}, Lsun/net/ftp/FtpReplyCode;->values()[Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 242
    .local v3, "code":Lsun/net/ftp/FtpReplyCode;
    invoke-virtual {v3}, Lsun/net/ftp/FtpReplyCode;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_11

    .line 243
    return-object v3

    .line 241
    .end local v3    # "code":Lsun/net/ftp/FtpReplyCode;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 246
    :cond_14
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->UNKNOWN_ERROR:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lsun/net/ftp/FtpReplyCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lsun/net/ftp/FtpReplyCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public static blacklist values()[Lsun/net/ftp/FtpReplyCode;
    .registers 1

    .line 33
    sget-object v0, Lsun/net/ftp/FtpReplyCode;->$VALUES:[Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, [Lsun/net/ftp/FtpReplyCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .registers 2

    .line 99
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    return v0
.end method

.method public blacklist isAuthentication()Z
    .registers 3

    .line 209
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isConnection()Z
    .registers 3

    .line 198
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isFileSystem()Z
    .registers 3

    .line 231
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x5

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isInformation()Z
    .registers 3

    .line 187
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isPermanentNegative()Z
    .registers 3

    .line 154
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_c

    const/16 v1, 0x258

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositiveCompletion()Z
    .registers 3

    .line 121
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_c

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositiveIntermediate()Z
    .registers 3

    .line 132
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_c

    const/16 v1, 0x190

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPositivePreliminary()Z
    .registers 3

    .line 110
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_c

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isProtectedReply()Z
    .registers 3

    .line 165
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_c

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isSyntax()Z
    .registers 3

    .line 176
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public blacklist isTransientNegative()Z
    .registers 3

    .line 143
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_c

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isUnspecified()Z
    .registers 3

    .line 220
    iget v0, p0, Lsun/net/ftp/FtpReplyCode;->value:I

    div-int/lit8 v1, v0, 0xa

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
