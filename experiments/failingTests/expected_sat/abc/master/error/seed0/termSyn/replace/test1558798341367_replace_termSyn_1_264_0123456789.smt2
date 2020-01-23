(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (= (str.replace (int.to.str tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0) (str.substr tmp_str2 tmp_int0 tmp_int0)) (str.at tmp_str2 tmp_int0)))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;actual status: not_implemented
;I0818 17:37:12.549403  3209 UnaryAutomaton.cpp:325] 1
;I0818 17:37:12.549422  3209 UnaryAutomaton.cpp:326] 1
;I0818 17:37:12.549429  3209 UnaryAutomaton.cpp:327] 1
;F0818 17:37:12.605389  3209 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7f94300f3f5d  google::LogMessage::Fail()
;    @     0x7f94300f6513  google::LogMessage::SendToLog()
;    @     0x7f94300f3aeb  google::LogMessage::Flush()
;    @     0x7f94300f545e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f9430717a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7f9430765992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9430716762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7f9430762df0  Vlab::SMT::ToString::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f94307117f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7f943075e450  Vlab::SMT::Eq::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f943070f878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7f94307505ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7f943074796e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f943075cb5c  Vlab::SMT::And::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9430750a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f9430746d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f943075ad2a  Vlab::SMT::Assert::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f9430769699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f943075a067  Vlab::SMT::Script::visit_children()
;    @     0x7f94306649e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7f9430746b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7f943075a03c  Vlab::SMT::Script::accept()
;    @     0x7f94306649ad  Vlab::SMT::Visitor::visit()
;    @     0x7f94307467bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7f943064ab84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7f942f7a6830  __libc_start_main
