﻿/* * This file is part of the DataStore package. * * @author (c) Tim Shelburne <tim@dontlookstudios.com> * * For the full copyright and license information, please view the LICENSE * file that was distributed with this source code. */package dls.datastore.factories {		import dls.datastore.domain.IDomainEntity;	import dls.datastore.factories.IEntityFactory;	import dls.datastore.mappers.IEntityMapper;		/*	 * A class to build entities through external mappers.	 */	public class EntityFactory implements IEntityFactory {				/*=========================================================*		 * PROPERTIES		 *=========================================================*/				private var _mappers:Vector.<IEntityMapper>;				/*=========================================================*		 * FUNCTIONS		 *=========================================================*/		public function EntityFactory(mappers:Vector.<IEntityMapper>) {			_mappers = mappers;		}				/**		 * build an entity by looping through all the available mappers		 */		public function build(type:String, config:Object):IDomainEntity {			for each (var mapper:IEntityMapper in _mappers) {				if (mapper.canHandle(type)) {					return mapper.handle(config);				}			}						return null;		}	}	}