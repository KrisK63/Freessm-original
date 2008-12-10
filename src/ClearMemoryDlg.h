/*
 * ClearMemoryDlg.h - Provides dialogs and runs the Clear Memory procedure(s)
 *
 * Copyright © 2008 Comer352l
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef CLEARMEMORYDLG_H
#define CLEARMEMORYDLG_H


#include <QtGui>
#include "SSMprotocol.h"
#include "FSSMdialogs.h"



class ClearMemoryDlg : public QObject
{
	Q_OBJECT

public:
	enum CMresult_dt {CMresult_aborted, CMresult_communicationError, CMresult_success, CMresult_reconnectAborted, CMresult_reconnectFailed};

	ClearMemoryDlg(QMainWindow *parent, SSMprotocol *SSMPdev, bool level);
	CMresult_dt run();

private:
	QMainWindow *_parent;
	SSMprotocol *_SSMPdev;
	bool _level;

	bool confirmClearMemory();
	CMresult_dt reconnect(QString SYS_ID_old, QString ROM_ID_old);

};


#endif

